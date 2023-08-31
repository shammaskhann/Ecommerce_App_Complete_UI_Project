import 'package:ecommerce_app_ui_project/resources/AppColor.dart';
import 'package:ecommerce_app_ui_project/resources/AppIcon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Banner1 extends StatelessWidget {
  const Banner1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.amber,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset(
                AppIcon.shoppingBag,
                height: 100,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Get',
                  style: TextStyle(
                      color: AppColor.white,
                      fontSize: 25,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  '50% OFF',
                  style: TextStyle(
                      color: AppColor.white,
                      fontSize: 32,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  'On First 03 Order',
                  style: TextStyle(
                      color: AppColor.white,
                      fontSize: 17,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
