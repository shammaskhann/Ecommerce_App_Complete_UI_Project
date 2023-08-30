import 'package:flutter/material.dart';

import 'AppColor.dart';

class AppText {
  static TextStyle onboardScreenText = TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.bold,
      color: AppColor.white,
      fontSize: 35);
  static TextStyle appBarHeading1 = TextStyle(
      color: AppColor.white,
      fontFamily: 'Manrope',
      fontSize: 50,
      fontWeight: FontWeight.w800);
  static TextStyle welcomeText = TextStyle(
      color: AppColor.white,
      fontSize: 22,
      fontWeight: FontWeight.w600,
      fontFamily: 'Manrope');
  static TextStyle hintText = TextStyle(
    fontFamily: 'Manrope',
    fontWeight: FontWeight.w500,
    color: AppColor.black60,
    fontSize: 16,
  );
}
