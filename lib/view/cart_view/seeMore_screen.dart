import 'package:ecommerce_app_ui_project/resources/AppInit.dart';
import 'package:ecommerce_app_ui_project/view/StandardAppBar/appbar_view.dart';
import 'package:flutter/material.dart';

import 'Widgets/PriceCheckout_Widget.dart';
import 'Widgets/cart_item_card_view.dart';

class SeeMore_Screen extends StatefulWidget {
  const SeeMore_Screen({super.key});

  @override
  State<SeeMore_Screen> createState() => _SeeMore_ScreenState();
}

class _SeeMore_ScreenState extends State<SeeMore_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            StandardAppBar(
              title:
                  'Shopping Cart (${AppInit.cartController.cartItems.length})',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: CartItemGenerator(
                isExtended: true,
                isUpdated: (bool isUpdated) async {
                  await AppInit.cartController.setCartLocalStorage();
                  // await Future.delayed(const Duration(seconds: 2));
                  setState(() {});
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(' Show Less',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w500,
                      )),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Edit',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ],
            ),
            const Spacer(),
            PriceCheckoutArea(
                title: 'Proceed To Checkout',
                onTap: () {
                  Navigator.pushNamed(context, '/selectLocation');
                }),
          ],
        ),
      )),
    );
  }
}
