import 'package:ecommerce_app_ui_project/Widgets/cart_icon.dart';
import 'package:ecommerce_app_ui_project/resources/AppColor.dart';
import 'package:ecommerce_app_ui_project/resources/AppIcon.dart';
import 'package:ecommerce_app_ui_project/resources/AppText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductAppBar extends StatelessWidget {
  final String title;
  const ProductAppBar({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => {
            Navigator.pop(
              context,
            )
          },
          icon: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: AppColor.black10,
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Icon(
              Icons.arrow_back_ios,
              size: 12,
            ),
          ),
        ),
        Text(
          title,
          style: AppText.appBarTitle,
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppIcon.searchIcon,
              height: 20,
              width: 20,
              color: Colors.black,
            )),
        const CartIcon(
          iconColor: Colors.black,
        ),
      ],
    );
  }
}
