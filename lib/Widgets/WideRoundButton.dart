import 'package:flutter/material.dart';

import '../resources/AppColor.dart';

class CenterRoundButton extends StatelessWidget {
  final String title;
  final Icon? suffixIcon;
  final VoidCallback onTap;
  const CenterRoundButton(
      {required this.title, this.suffixIcon, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 61),
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.bold,
                  color: AppColor.black60,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              suffixIcon ?? Container(),
            ],
          ),
        ),
      ),
    );
  }
}
