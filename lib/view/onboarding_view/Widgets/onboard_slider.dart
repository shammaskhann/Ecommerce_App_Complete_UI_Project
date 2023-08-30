import 'package:card_swiper/card_swiper.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:ecommerce_app_ui_project/resources/AppColor.dart';
import 'package:ecommerce_app_ui_project/view/onboarding_view/Widgets/onBoardingBanner.dart';
import 'package:flutter/material.dart';

class OnboardSlider extends StatefulWidget {
  const OnboardSlider({super.key});

  @override
  State<OnboardSlider> createState() => _OnboardSliderState();
}

class _OnboardSliderState extends State<OnboardSlider> {
  @override
  Widget build(BuildContext context) {
    int currentValue = 0;
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 1,
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Swiper(
        onIndexChanged: (value) {
          setState(() {
            currentValue = value;
          });
          print(currentValue);
        },
        itemCount: OnBoardBanner.onboardBanner.length,
        itemBuilder: (BuildContext context, int index) {
          return OnBoardBanner(index: index);
        },
        autoplay: true,
        autoplayDelay: 7000,
        pagination: SwiperPagination(
          margin: EdgeInsets.zero,
          alignment: Alignment.bottomLeft,
          builder: SwiperCustomPagination(
            builder: (context, config) {
              return CarouselIndicator(
                count: OnBoardBanner.onboardBanner.length,
                index: config.activeIndex,
                color: AppColor.black45,
                activeColor: AppColor.white,
                height: 5,
                width: 24,
              );
            },
          ),
        ),
      ),
    );
  }
}
