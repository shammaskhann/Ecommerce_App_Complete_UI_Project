import 'dart:async';

import 'package:ecommerce_app_ui_project/Widgets/CenterRoundButton.dart';
import 'package:ecommerce_app_ui_project/resources/AppAnimation.dart';
import 'package:ecommerce_app_ui_project/resources/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../resources/AppInit.dart';
import 'Widgets/onboard_slider.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool loading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AppInit.cartController.fetchCartLocalStorage();
    AppInit.favController.fetchFavLocalStorage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Expanded(
              child: OnboardSlider(),
            ),
            //const
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: Center(
                    child: Lottie.asset(AppAnimation.onBoardAnimation1))),
            CenterRoundButton(
              title: "Get Started",
              suffixIcon: Icon(
                Icons.arrow_forward,
                color: AppColor.black60,
                size: 15,
              ),
              loading: loading,
              onTap: () {
                setState(() {
                  loading = true;
                });
                Timer(const Duration(seconds: 2), () {
                  Navigator.pushReplacementNamed(context, '/dashboard');
                });
              },
            )
          ],
        ),
      ),
      backgroundColor: AppColor.darkBlue,
    );
  }
}
