import 'package:flutter/material.dart';

import '../../../resources/AppColor.dart';

// ignore: must_be_immutable
class OnBoardBanner extends StatelessWidget {
  int index;
  static List onboardBanner = [
    {
      'title': 'Your holiday \nshopping \ndelivered to Screen \none',
      'tagline':
          'Theres something for everyone to enjoy with Sweet Shop Favourites Screen 1'
    },
    {
      'title': 'Your holiday \nshopping \ndelivered to Screen \ntwo',
      'tagline':
          'Theres something for everyone to enjoy with Sweet Shop Favourites Screen 2'
    }
  ];
  OnBoardBanner({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            onboardBanner[index]['title'],
            style: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.bold,
                color: AppColor.white,
                fontSize: 35),
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            onboardBanner[index]['tagline'],
            style: TextStyle(
                color: AppColor.black45, fontSize: 20, wordSpacing: 1.5),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
