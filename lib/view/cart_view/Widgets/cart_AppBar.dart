import 'package:ecommerce_app_ui_project/resources/AppInit.dart';
import 'package:flutter/material.dart';

import '../../../resources/AppColor.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => {Navigator.pop(context, true)},
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
        const SizedBox(
          width: 8,
        ),
        Text(
          'Shopping Cart (${AppInit.cartController.cartItems.length})',
          style: TextStyle(
              fontSize: 16,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w700,
              color: AppColor.black100),
        )
      ],
    );
  }
}
