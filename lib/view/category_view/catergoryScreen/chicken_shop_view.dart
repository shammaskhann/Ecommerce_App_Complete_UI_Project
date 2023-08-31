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
                        child: ProductScreen(
                          title: 'Halal Meat',
                        ));
                  }));
        },
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
