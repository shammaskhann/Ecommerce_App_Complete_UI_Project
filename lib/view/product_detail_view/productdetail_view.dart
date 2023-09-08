import 'package:ecommerce_app_ui_project/resources/AppImage.dart';
import 'package:ecommerce_app_ui_project/resources/AppText.dart';
import 'package:ecommerce_app_ui_project/view/productPage_view/Wdigets/product_appbar.dart';
import 'package:ecommerce_app_ui_project/view/product_detail_view/widget/fav_icon.dart';
import 'package:ecommerce_app_ui_project/view/product_detail_view/widget/itemImage_slider.dart';
import 'package:ecommerce_app_ui_project/view/product_detail_view/widget/product_button.dart';
import 'package:ecommerce_app_ui_project/view/product_detail_view/widget/review_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../resources/AppColor.dart';
import '../../resources/AppInit.dart';
import 'widget/description_view.dart';

class ProductDetailScreen extends StatefulWidget {
  final Map itemMap;
  const ProductDetailScreen({required this.itemMap, super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  bool isFactDescExtended = false;
  bool isReviewExtended = false;
  bool isAdded = false;
  @override
  void initState() {
    super.initState();
    isAdded = AppInit.cartController.isAdded(widget.itemMap['name']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProductAppBar(
                title: 'Product Detail',
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Tagline and Name
                  Text(
                    widget.itemMap['tagline'],
                    style: const TextStyle(
                        fontSize: 50,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                  Text(
                    widget.itemMap['name'],
                    style: const TextStyle(
                        fontSize: 50,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w800,
                        color: Colors.black),
                  ),
                  //Review section
                  Row(
                    children: [
                      RatingBarIndicator(
                        rating: widget.itemMap['starRating'].toDouble(),
                        itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        itemCount: 5,
                        itemSize: 20.0,
                        direction: Axis.horizontal,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '(${widget.itemMap['review'].length} Reviews)',
                        style: const TextStyle(
                            fontSize: 15,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  //Image and Fav&more Item
                  Stack(
                    children: [
                      ImageSlider(itemMap: widget.itemMap),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                            decoration: BoxDecoration(
                              color: AppColor.black10,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                FavICon(
                                  ItemMap: widget.itemMap,
                                  isUpdated: (value) {
                                    setState(() {});
                                  },
                                ),
                                const SizedBox(
                                  height: 30,
                                  width: 60,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      AppImages.moreUnselected,
                                      color: Colors.black,
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                  //Spacing
                  const SizedBox(
                    height: 20,
                  ),
                  //Price and % off
                  Row(
                    children: [
                      Text(
                        '\$ ${widget.itemMap['price']} /KG',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w800,
                            color: AppColor.darkBlue),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.secondaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5),
                          child: Text(
                            '\$${widget.itemMap['price'] * 0.2} OFF',
                            style: const TextStyle(
                                fontSize: 13,
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //Spacing
                  const SizedBox(
                    height: 20,
                  ),
                  //Add to Cart Button and Buy Now
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RoundButton(
                            title: 'Add To Cart',
                            textColor: AppColor.secondaryColor,
                            buttonColor: Colors.white,
                            isAdded: isAdded,
                            onTap: () {
                              setState(() {
                                isAdded = !isAdded;
                                if (isAdded) {
                                  AppInit.cartController
                                      .addToCart(widget.itemMap);
                                } else {
                                  AppInit.cartController
                                      .removeFromCart(widget.itemMap['name']);
                                }
                              });
                            }),
                        RoundButton(
                            title: 'Buy Now',
                            textColor: Colors.white,
                            buttonColor: AppColor.secondaryColor,
                            isAdded: false,
                            onTap: () {}),
                      ],
                    ),
                  ),
                  //Spacing
                  const SizedBox(
                    height: 10,
                  ),
                  //All Description
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Details',
                        style: AppText.productHeading,
                      ),
                      Text(widget.itemMap['description'],
                          style: AppText.productDescription),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Nutritional Facts',
                            style: AppText.productHeading,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          (!isFactDescExtended)
                              ? IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isFactDescExtended = true;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.arrow_drop_down,
                                    size: 30,
                                  ))
                              : IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isFactDescExtended = false;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.arrow_drop_up,
                                    size: 30,
                                  )),
                        ],
                      ),
                      (isFactDescExtended)
                          ? ShowDescriptionFact(
                              description: widget.itemMap['nurtrionalFact'],
                            )
                          : Container(),
                      Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1,
                        color: AppColor.black60.withOpacity(0.8),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Reviews',
                            style: AppText.productHeading,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          (!isReviewExtended)
                              ? IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isReviewExtended = true;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.arrow_drop_down,
                                    size: 30,
                                  ))
                              : IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isReviewExtended = false;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.arrow_drop_up,
                                    size: 30,
                                  )),
                        ],
                      ),
                      (isReviewExtended)
                          ? SizedBox(
                              height: 500,
                              width: MediaQuery.of(context).size.width,
                              child: ShowReview(
                                  reviewMap: widget.itemMap['review']))
                          : Container(),
                      Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1,
                        color: AppColor.black60.withOpacity(0.8),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
