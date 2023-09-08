import 'package:ecommerce_app_ui_project/resources/AppColor.dart';
import 'package:ecommerce_app_ui_project/view/category_view/catergoryScreen/Widget/itemCard_view.dart';
import 'package:ecommerce_app_ui_project/view/productPage_view/product_view.dart';
import 'package:flutter/material.dart';

class ChickenShop extends StatelessWidget {
  const ChickenShop({super.key});

  @override
  Widget build(BuildContext context) {
    List allBanner = [
      {
        'title': "Halal Meat",
        'tagline': 'Certified Halal Product',
        'img': 'assets/images/Halal.png',
        'imgBack': Colors.green.shade400,
        'price': 90.99,
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
                          title: "Halal Meat",
                          Itemtag: 'Halal',
                        ));
                  }));
        },
      },
      {
        'title': "Free Delivery",
        'tagline': 'Free Delivery on First Order',
        'img': 'assets/images/freeDelivery.png',
        'imgBack': Colors.black54,
        'price': 90.99,
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
                          title: "Free Delivery",
                          Itemtag: 'Free Delivery',
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
                          title: "Free Delivery",
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
