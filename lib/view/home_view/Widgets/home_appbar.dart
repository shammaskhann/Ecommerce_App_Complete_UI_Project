import 'package:ecommerce_app_ui_project/Widgets/cart_icon.dart';
import 'package:ecommerce_app_ui_project/resources/AppIcon.dart';
import 'package:ecommerce_app_ui_project/resources/AppText.dart';
import 'package:ecommerce_app_ui_project/view/home_view/Widgets/deliveryTime_selection.dart';
import 'package:ecommerce_app_ui_project/view/home_view/Widgets/location_selection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../resources/AppColor.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      color: AppColor.secondaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Spacer(
              flex: 2,
            ),
            //Title
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hey, Halal", style: AppText.welcomeText),
                const CartIcon()
              ],
            ),
            //Search Bar
            Container(
              margin: const EdgeInsets.only(
                top: 9,
              ),
              height: 50,
              decoration: BoxDecoration(
                color: AppColor.darkBlue,
                borderRadius: BorderRadius.circular(25),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search Product or Store",
                  hintStyle: AppText.hintText,
                  prefixIcon: Container(
                    margin: const EdgeInsets.only(
                      left: 12,
                      top: 12,
                      bottom: 12,
                    ),
                    child: SvgPicture.asset(
                      AppIcon.searchIcon,
                      color: AppColor.black60,
                    ),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [LocationSelectionWidget(), DeliveryTimeSelection()],
            ),
          ],
        ),
      ),
    );
  }
}
