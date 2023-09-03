import 'package:ecommerce_app_ui_project/resources/AppInit.dart';
import 'package:ecommerce_app_ui_project/view/StandardAppBar/appbar_view.dart';
import 'package:ecommerce_app_ui_project/view/cart_view/Widgets/PriceCheckout_Widget.dart';
import 'package:ecommerce_app_ui_project/view/cart_view/seeMore_screen.dart';
import 'package:flutter/material.dart';
import 'Widgets/cart_Banner.dart';
import 'Widgets/cart_item_card_view.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Stack(
              children: [
                const CartBanner(),
                Positioned(
                    top: 20,
                    left: 5,
                    child: StandardAppBar(
                        title:
                            'Shopping Cart (${AppInit.cartController.cartItems.length})')),
              ],
            )),
            //Cart Item View Area and Edit Button
            (AppInit.cartController.cartItems.isNotEmpty)
                ? Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CartItemGenerator(
                          isExtended: false,
                          isUpdated: (bool isUpdated) async {
                            await AppInit.cartController.setCartLocalStorage();
                            // await Future.delayed(
                            //     const Duration(milliseconds: 2));
                            setState(() {});
                          },
                        ),
                        //Show More and Edit Button
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            (AppInit.cartController.cartItems.length > 3)
                                ? TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SeeMore_Screen()));
                                    },
                                    child: Text(
                                        '+ ${AppInit.cartController.cartItems.length - 3} More',
                                        style: const TextStyle(
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
                            ? PriceCheckoutArea(
                                title: 'Proceed To Checkout',
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, '/selectLocation');
                                })
                            : Container(),
                      ],
                    ),
                  )
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
