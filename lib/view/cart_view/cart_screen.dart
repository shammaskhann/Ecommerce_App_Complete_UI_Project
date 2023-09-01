import 'package:ecommerce_app_ui_project/resources/AppInit.dart';
import 'package:ecommerce_app_ui_project/view/cart_view/Widgets/cart_Appbar.dart';
import 'package:flutter/material.dart';

import '../../Widgets/WideRoundButto.dart';
import '../../resources/AppColor.dart';
import 'Widgets/cart_Banner.dart';
import 'Widgets/cart_item_card_view.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool isExtended = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (!isExtended)
                ? const Expanded(
                    child: Stack(
                    children: [
                      CartBanner(),
                      Positioned(top: 20, left: 5, child: CartAppBar()),
                    ],
                  ))
                : const SafeArea(child: CartAppBar()),
            //Cart Item View Area and Edit Button
            (AppInit.cartController.cartItems.isNotEmpty)
                ? Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CartItemGenerator(isExtended: isExtended),
                          //Show More and Edit Button
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              (AppInit.cartController.cartItems.length > 3 &&
                                      !isExtended)
                                  ? TextButton(
                                      onPressed: () {
                                        isExtended = true;
                                        setState(() {});
                                      },
                                      child: Text(
                                          '+ ${AppInit.cartController.cartItems.length - 3} More',
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Manrope',
                                            fontWeight: FontWeight.w500,
                                          )),
                                    )
                                  : (isExtended &&
                                          AppInit.cartController.cartItems
                                                  .length >
                                              3)
                                      ? TextButton(
                                          onPressed: () {
                                            isExtended = false;
                                            setState(() {});
                                          },
                                          child: const Text(' Show Less',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Manrope',
                                                fontWeight: FontWeight.w500,
                                              )),
                                        )
                                      : Container(),
                              (AppInit.cartController.cartItems.length > 1)
                                  ? TextButton(
                                      onPressed: () {},
                                      child: const Text('Edit',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Manrope',
                                            fontWeight: FontWeight.w500,
                                          )))
                                  : Container(),
                            ],
                          ),
                          const Spacer(),
                          //Total Price and Checkout Button
                          (AppInit.cartController.cartItems.isNotEmpty)
                              ? Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: AppColor.black100.withOpacity(0.2),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          const SizedBox(height: 20),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text('Subtotal',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: 'Manrope',
                                                    fontWeight: FontWeight.w500,
                                                  )),
                                              Text(
                                                  '\$${AppInit.cartController.totalPrice()}',
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: 'Manrope',
                                                    fontWeight: FontWeight.w500,
                                                  )),
                                            ],
                                          ),
                                          const SizedBox(height: 20),
                                          const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Delivery',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: 'Manrope',
                                                    fontWeight: FontWeight.w500,
                                                  )),
                                              Text('\$ 2.00',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: 'Manrope',
                                                    fontWeight: FontWeight.w500,
                                                  )),
                                            ],
                                          ),
                                          const SizedBox(height: 20),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text('Total',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: 'Manrope',
                                                    fontWeight: FontWeight.w500,
                                                  )),
                                              Text(
                                                  '\$ ${AppInit.cartController.totalPrice() + 2}',
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: 'Manrope',
                                                    fontWeight: FontWeight.w500,
                                                  )),
                                            ],
                                          ),
                                          const SizedBox(height: 20),
                                          WideRoundButton(
                                            title: 'Proceed To Checkout',
                                            onTap: () {},
                                          ),
                                        ]),
                                  ),
                                )
                              : Container(),
                        ],
                      ),
                    ))
                : const Expanded(
                    flex: 2,
                    child: Center(
                        child: Text('Cart is Empty',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'))),
                  ),
          ],
        ));
  }
}
