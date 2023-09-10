import 'package:ecommerce_app_ui_project/resources/AppColor.dart';
import 'package:flutter/material.dart';
import '../resources/AppInit.dart';
import '../view/product_detail_view/productdetail_view.dart';

class ItemCard2 extends StatefulWidget {
  final Map itemMap;
  final Function(bool) isUpdated;
  const ItemCard2({required this.itemMap, required this.isUpdated, super.key});

  @override
  State<ItemCard2> createState() => _ItemCard2State();
}

class _ItemCard2State extends State<ItemCard2> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await Navigator.push(
            context,
            PageRouteBuilder(
                maintainState: true,
                transitionDuration: const Duration(milliseconds: 500),
                reverseTransitionDuration: const Duration(milliseconds: 500),
                pageBuilder: (context, animation, secondaryAnimation) {
                  return FadeTransition(
                    opacity: animation,
                    child: ProductDetailScreen(
                      itemMap: widget.itemMap,
                    ),
                  );
                }));
        widget.isUpdated(true);
        setState(() {});
      },
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            color: AppColor.black10.withOpacity(0.7),
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
                  child: Stack(
                    children: [
                      Container(
                        child: Center(
                          child: Image.asset(
                            widget.itemMap['img'][0],
                            height: 140,
                            width: 140,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 10,
                        child: InkWell(
                            onTap: () {
                              AppInit.cartController.addToCart(widget.itemMap);
                              // setState(() {});
                            },
                            child: CircleAvatar(
                                backgroundColor: AppColor.secondaryColor,
                                radius: 16,
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 18,
                                ))),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: AppColor.black20,
                  thickness: 0.8,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '\$${widget.itemMap['price']}',
                        style: TextStyle(
                            color: AppColor.black100,
                            fontFamily: 'Manrope',
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        widget.itemMap['name'],
                        style: TextStyle(
                            color: AppColor.black60,
                            fontFamily: 'Manrope',
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
