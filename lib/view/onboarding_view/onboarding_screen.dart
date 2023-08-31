import 'package:card_swiper/card_swiper.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:ecommerce_app_ui_project/Widgets/WideRoundButton.dart';
import 'package:ecommerce_app_ui_project/resources/AppAnimation.dart';
import 'package:ecommerce_app_ui_project/resources/AppColor.dart';
import 'package:ecommerce_app_ui_project/view/dashboard_view/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'Widgets/onBoardingBanner.dart';
import 'Widgets/onboard_slider.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
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
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DashboardScreen()));
              },
            )
          ],
        ),
      ),
      backgroundColor: AppColor.darkBlue,
    );
  }
}
