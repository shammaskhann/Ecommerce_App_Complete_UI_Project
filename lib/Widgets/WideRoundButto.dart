import 'package:ecommerce_app_ui_project/resources/AppColor.dart';
import 'package:flutter/material.dart';

class WideRoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const WideRoundButton({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          height: 50,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            color: AppColor.secondaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
              child: Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
          )),
        ),
      ),
    );
  }
}
