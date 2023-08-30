import 'package:flutter/material.dart';
import 'package:ecommerce_app_ui_project/resources/AppColor.dart';
import 'package:ecommerce_app_ui_project/view/category_view/catergoryScreen/Widget/itemCard_view.dart';

class SeafoodShop extends StatelessWidget {
  const SeafoodShop({super.key});

  @override
  Widget build(BuildContext context) {
    List allBanner = [
      {
        'title': "Halal Meat",
        'tagline': 'Certified Halal Product',
        'img': 'assets/images/Halal.png',
        'imgBack': Colors.green.shade400,
        'price': 90.99,
        'onTap': () {},
      },
      {
        'title': "100% Fresh Meat",
        'tagline': 'Guaranteed Fresh Meat',
        'img': 'assets/images/Fresh100.png',
        'imgBack': Colors.green.shade700,
        'price': 50.00,
        'onTap': () {},
      },
      {
        'title': "Fast Home Delivery",
        'tagline': 'First Check Then Pay',
        'img': 'assets/images/QuickHomeDelivery.png',
        'imgBack': AppColor.lightAmber,
        'price': 120.99,
        'onTap': () {},
      }
    ];
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (context, index) {
            return ExtendItemCardView(
              title: allBanner[index]['title'],
              tagline: allBanner[index]['tagline'],
              img: allBanner[index]['img'],
              imgBack: allBanner[index]['imgBack'],
              price: allBanner[index]['price'],
              onTap: allBanner[index]['onTap'],
            );
          }),
    );
  }
}
