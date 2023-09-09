import 'package:flutter/material.dart';
import 'package:ecommerce_app_ui_project/resources/AppColor.dart';
import 'package:ecommerce_app_ui_project/view/category_view/catergoryScreen/Widget/itemCard_view.dart';

import '../../productPage_view/product_view.dart';

class FruitShop extends StatelessWidget {
  const FruitShop({super.key});

  @override
  Widget build(BuildContext context) {
    List allBanner = [
      {
        'title': "Lowest Price",
        'tagline': 'Save upto 75% ',
        'img': 'assets/images/lowPrice.png',
        'imgBack': Colors.black87,
        'price': 80.99,
        'onTap': () {
          Navigator.push(
              context,
              PageRouteBuilder(
                  transitionDuration: const Duration(milliseconds: 500),
                  reverseTransitionDuration: const Duration(milliseconds: 500),
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return FadeTransition(
                        opacity: animation,
                        child: const ProductScreen(
                          title: "Lowest Price",
                          Itemtag: 'Low Price',
                        ));
                  }));
        },
      },
      {
        'title': "100% Organic Fruits",
        'tagline': 'Guaranteed Fresh Meat',
        'img': 'assets/images/Fresh100.png',
        'imgBack': Colors.green.shade700,
        'price': 50.00,
        'onTap': () {
          Navigator.push(
              context,
              PageRouteBuilder(
                  transitionDuration: const Duration(milliseconds: 500),
                  reverseTransitionDuration: const Duration(milliseconds: 500),
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return FadeTransition(
                        opacity: animation,
                        child: const ProductScreen(
                          title: "100% Organic Fruits",
                          Itemtag: 'Popular',
                        ));
                  }));
        },
      },
      {
        'title': "Fast Home Delivery",
        'tagline': 'First Check Then Pay',
        'img': 'assets/images/QuickHomeDelivery.png',
        'imgBack': AppColor.lightAmber,
        'price': 120.99,
        'onTap': () {
          Navigator.push(
              context,
              PageRouteBuilder(
                  transitionDuration: const Duration(milliseconds: 500),
                  reverseTransitionDuration: const Duration(milliseconds: 500),
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return FadeTransition(
                        opacity: animation,
                        child: const ProductScreen(
                          title: "Fast Home Delivery",
                          Itemtag: 'Free Delivery',
                        ));
                  }));
        },
      }
    ];
    return Expanded(
      child: ListView.builder(
          padding: const EdgeInsets.only(top: 20, bottom: 80),
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
