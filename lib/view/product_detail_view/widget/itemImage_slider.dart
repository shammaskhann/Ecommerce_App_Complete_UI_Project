import 'package:card_swiper/card_swiper.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';

import '../../../resources/AppColor.dart';

class ImageSlider extends StatefulWidget {
  final Map itemMap;
  const ImageSlider({required this.itemMap, super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Swiper(
        onIndexChanged: (value) {
          setState(() {});
        },
        itemCount: widget.itemMap['img'].length,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            widget.itemMap['img'][index],
            fit: BoxFit.fill,
          );
        },
        autoplay: true,
        autoplayDelay: 7000,
        pagination: SwiperPagination(
          margin: EdgeInsets.zero,
          alignment: Alignment.bottomLeft,
          builder: SwiperCustomPagination(
            builder: (context, config) {
              return CarouselIndicator(
                count: widget.itemMap['img'].length,
                index: config.activeIndex,
                color: AppColor.amber,
                activeColor: AppColor.black45,
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
