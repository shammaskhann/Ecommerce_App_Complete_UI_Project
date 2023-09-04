import 'package:flutter/material.dart';
import '../../../resources/AppColor.dart';

class TrackOrderButton extends StatelessWidget {
  final String title;
  final Color textColor;
  final Color buttonColor;
  final VoidCallback onTap;
  const TrackOrderButton({
    required this.title,
    required this.textColor,
    required this.buttonColor,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          height: 50,
          width: 120,
          decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColor.secondaryColor, width: 1.5)),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  color: textColor, fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
        ));
  }
}
