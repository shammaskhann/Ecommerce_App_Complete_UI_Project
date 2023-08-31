import 'package:flutter/material.dart';

import '../../../Widgets/cart_icon.dart';
import '../../../resources/AppColor.dart';
import '../../../resources/AppText.dart';

class CategoryAppBar extends StatelessWidget {
  const CategoryAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      color: AppColor.secondaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(
              flex: 2,
            ),
            //Title
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hey, Halal", style: AppText.welcomeText),
                const CartIcon()
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.156,
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shop',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Manrope',
                        fontSize: 37, //was 50
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.start,
                  ),
                  Text('By Category',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Manrope',
                          fontSize: 37, //was 50
                          fontWeight: FontWeight.w800))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
