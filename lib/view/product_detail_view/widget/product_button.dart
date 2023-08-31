import 'package:ecommerce_app_ui_project/resources/AppAnimation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../resources/AppColor.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final Color textColor;
  final Color buttonColor;
  final bool isAdded;
  final VoidCallback onTap;
  const RoundButton({
    required this.title,
    required this.textColor,
    required this.buttonColor,
    required this.isAdded,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width * 0.45,
          decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColor.secondaryColor, width: 1.5)),
          child: Center(
              child: (!isAdded)
                  ? Text(
                      title,
                      style: TextStyle(
                          color: textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )
                  : Lottie.asset(AppAnimation.addtoCartAnimation,
                      height: 25, width: 25, repeat: false)),
        ));
  }
}
