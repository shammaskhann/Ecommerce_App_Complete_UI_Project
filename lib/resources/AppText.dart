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
  static TextStyle appBarTitle = const TextStyle(
      fontFamily: 'Manrope', fontSize: 18, fontWeight: FontWeight.w600);
  static TextStyle productDescription = TextStyle(
      fontSize: 18,
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w300,
      color: AppColor.black60.withOpacity(0.8));
  static TextStyle productHeading = const TextStyle(
      fontSize: 20,
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500,
      color: Colors.black);
}
