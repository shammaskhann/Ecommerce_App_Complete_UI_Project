import 'package:ecommerce_app_ui_project/resources/AppColor.dart';
import 'package:ecommerce_app_ui_project/resources/AppInit.dart';
import 'package:flutter/material.dart';

class CartItemGenerator extends StatefulWidget {
  final bool isExtended;
  const CartItemGenerator({required this.isExtended});

  @override
  State<CartItemGenerator> createState() => _CartItemGeneratorState();
}

class _CartItemGeneratorState extends State<CartItemGenerator> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        shrinkWrap: true,
        itemCount: (widget.isExtended)
            ? AppInit.cartController.cartItems.length
            : (!widget.isExtended &&
                    AppInit.cartController.cartItems.length > 3)
                ? 3
                : AppInit.cartController.cartItems.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                children: [
                  // Image
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                            AppInit.cartController.cartItems[index]['img'][0]),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  // Text
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Name
                          Text(
                            AppInit.cartController.cartItems[index]['name'],
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          // Price
                          Text(
                            '\$${AppInit.cartController.cartItems[index]['price'] * AppInit.cartController.cartItems[index]['quantity']}'
                                .toString(),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  // Quantity
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Minus
                        GestureDetector(
                          onTap: () {
                            AppInit.cartController
                                .quantityDecrement(context, index);
                          },
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: AppColor.black45,
                            child: const Icon(
                              Icons.remove,
                              size: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        // Quantity
                        Text(
                          AppInit.cartController.cartItems[index]['quantity']
                              .toString(),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        // Plus
                        GestureDetector(
                          onTap: () {
                            AppInit.cartController.quantityIncrement(index);
                            setState(() {});
                          },
                          child: CircleAvatar(
                            backgroundColor: AppColor.black45,
                            radius: 15,
                            child: const Icon(
                              Icons.add,
                              size: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Divider
              const Divider(
                indent: 10,
                endIndent: 10,
                thickness: 1,
                color: Colors.grey,
              ),
            ],
          );
        });
  }
}
