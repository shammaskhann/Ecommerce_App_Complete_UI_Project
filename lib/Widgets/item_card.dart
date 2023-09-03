import 'package:ecommerce_app_ui_project/resources/AppColor.dart';
import 'package:ecommerce_app_ui_project/view/dashboard_view/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../resources/AppAnimation.dart';
import '../resources/AppInit.dart';
import '../view/product_detail_view/productdetail_view.dart';

class ItemCard extends StatefulWidget {
  final Map itemMap;
  const ItemCard({required this.itemMap});

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  bool isAdded = false;
  @override
  void initState() {
    super.initState();
    isAdded = AppInit.cartController.isAdded(widget.itemMap['name']);
  }

  @override
  Widget build(BuildContext context) {
    _refresh() async {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return const DashboardScreen();
      }));
      // setState(() {
      //   isAdded = AppInit.cartController.isAdded(widget.itemMap['name']);
      // });
    }

    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 500),
                reverseTransitionDuration: const Duration(milliseconds: 500),
                pageBuilder: (context, animation, secondaryAnimation) {
                  return FadeTransition(
                    opacity: animation,
                    child: ProductDetailScreen(
                      itemMap: widget.itemMap,
                    ),
                  );
                })).then((val) => {_refresh()});
      },
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: AppColor.black10,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Image.asset(
                      widget.itemMap['img'][0],
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                Divider(
                  color: AppColor.black20,
                  thickness: 0.8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.itemMap['name'],
                      style: TextStyle(
                          color: AppColor.black100,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      widget.itemMap['tagline'],
                      style: TextStyle(
                          color: AppColor.black60,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(top: 7),
                        width: 150,
                        decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(16)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Unit',
                                    style: TextStyle(
                                        fontFamily: 'Manrope',
                                        color: AppColor.black20,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '\$ ${widget.itemMap['price']}',
                                    style: TextStyle(
                                        color: AppColor.black100,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    isAdded = !isAdded;
                                    if (isAdded) {
                                      AppInit.cartController
                                          .addToCart(widget.itemMap);
                                    } else {
                                      AppInit.cartController.removeFromCart(
                                          widget.itemMap['name']);
                                    }
                                    _refresh();
                                  });
                                },
                                child: (!isAdded)
                                    ? CircleAvatar(
                                        backgroundColor:
                                            AppColor.secondaryColor,
                                        radius: 16,
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 18,
                                        ))
                                    : Lottie.asset(
                                        AppAnimation.addtoCartAnimation,
                                        height: 25,
                                        width: 25,
                                        repeat: false))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
