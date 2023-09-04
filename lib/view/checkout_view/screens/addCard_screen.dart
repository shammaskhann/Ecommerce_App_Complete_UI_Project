import 'dart:math';

import 'package:ecommerce_app_ui_project/view/cart_view/Widgets/PriceCheckout_Widget.dart';
import 'package:ecommerce_app_ui_project/view/checkout_view/CutsomTextFeild/custom_textfield.dart';
import 'package:flutter/material.dart';
import '../../../resources/AppInit.dart';
import '../../StandardAppBar/appbar_view.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        const StandardAppBar(
          title: 'Add Card',
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextFeild(
                  title: 'CARD HOLDER NAME',
                  hintText: 'John Smith',
                  controller: AppInit.cardDetailController.cardHolderName,
                  keyboardType: TextInputType.name),
              const SizedBox(
                height: 20,
              ),
              CustomTextFeild(
                  title: 'CARD NUMBER',
                  hintText: '1234 5678 9012 3456',
                  controller: AppInit.cardDetailController.cardNumber,
                  keyboardType: TextInputType.phone),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .4,
                    child: CustomTextFeild(
                        title: 'EXPIRY DATE',
                        hintText: 'MM/YY',
                        controller: AppInit.cardDetailController.expiryDate,
                        keyboardType: TextInputType.datetime),
                  ),
                  const Spacer(),
                  Container(
                    width: MediaQuery.of(context).size.width * .4,
                    child: CustomTextFeild(
                        title: 'CVV',
                        hintText: '123',
                        controller: AppInit.cardDetailController.cvv,
                        keyboardType: TextInputType.number),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Spacer(),
        PriceCheckoutArea(
            title: 'Make Payment',
            onTap: () {
              // AppInit.orderController.createOrder(
              //   76500 + Random().nextInt(99 - 10),
              //   AppInit.cartController.cartItems,
              //   'Heavy Driver',
              //   AppInit.cartController.totalPrice(),
              //   AppInit.locationController.getSelectedLocation(),
              //   AppInit.cardDetailController.cardDetail[0],
              // );
              Navigator.pushNamed(context, '/orderPlaced');
            })
      ],
    )));
  }
}
