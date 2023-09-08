import 'dart:math';
import 'package:ecommerce_app_ui_project/resources/AppAnimation.dart';
import 'package:ecommerce_app_ui_project/view/cart_view/Widgets/PriceCheckout_Widget.dart';
import 'package:ecommerce_app_ui_project/view/checkout_view/CutsomTextFeild/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../resources/AppInit.dart';
import '../../StandardAppBar/appbar_view.dart';

class AddCardScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  AddCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Column(
          children: [
            const StandardAppBar(
              title: 'Add Card',
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextFeild(
                      title: 'CARD HOLDER NAME',
                      hintText: 'John Smith',
                      controller: AppInit.cardDetailController.cardHolderName,
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter card holder name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextFeild(
                        title: 'CARD NUMBER',
                        formatter: [
                          MaskTextInputFormatter(
                              mask: '#### #### #### ####',
                              filter: {"#": RegExp(r'[0-9]')})
                        ],
                        hintText: '1234 5678 9012 3456',
                        controller: AppInit.cardDetailController.cardNumber,
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter card number';
                          }
                          return null;
                        }),
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
                              formatter: [
                                MaskTextInputFormatter(
                                    mask: '##/##',
                                    filter: {"#": RegExp(r'[0-9]')})
                              ],
                              hintText: 'MM/YY',
                              controller:
                                  AppInit.cardDetailController.expiryDate,
                              keyboardType: TextInputType.datetime,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter expiry date';
                                }
                                return null;
                              }),
                        ),
                        const Spacer(),
                        Container(
                          width: MediaQuery.of(context).size.width * .4,
                          child: CustomTextFeild(
                              title: 'CVV',
                              formatter: [
                                MaskTextInputFormatter(
                                    mask: '###',
                                    filter: {"#": RegExp(r'[0-9]')})
                              ],
                              hintText: '123',
                              controller: AppInit.cardDetailController.cvv,
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter cvv';
                                }
                                return null;
                              }),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            PriceCheckoutArea(
                title: 'Make Payment',
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    AppInit.orderController.createOrder(
                      76500 +
                          Random()
                              .nextInt(99 - 10), //for producing random id no
                      List.from(AppInit.cartController
                          .cartItems), //List of Carts Item forwarded
                      'Heavy Driver', // Driver Name
                      AppInit.cartController
                          .totalPrice(), // Total Price of Cart Items
                      AppInit.locationController
                          .getSelectedLocation(), //Location of User
                      AppInit.cardDetailController.addCardDetail(),
                    );
                    //AppInit.orderController.test1();
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Lottie.asset(
                            AppAnimation.orderCompletedAnimation,
                            height: 150,
                            width: 150),
                        content: const Text(
                          'Your Order has been placed successfully',
                          textAlign: TextAlign.center,
                        ),
                        actions: [
                          TextButton(
                              onPressed: () async {
                                await AppInit.cartController.clearCart();
                                await AppInit.cardDetailController.clear();
                                AppInit.orderController.test1();
                                Navigator.pushNamed(context, '/orderPlaced');
                              },
                              child: const Text('Track Order')),
                          TextButton(
                              onPressed: () {
                                AppInit.cartController.clearCart();
                                AppInit.cardDetailController.clear();
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    '/dashboard',
                                    (Route<dynamic> route) => false);
                              },
                              child: Text('OK'))
                        ],
                      ),
                    );
                  }
                })
          ],
        )));
  }
}
