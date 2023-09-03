import 'package:flutter/material.dart';
import '../../../Widgets/WideRoundButto.dart';
import '../../../resources/AppColor.dart';
import '../../../resources/AppInit.dart';

class PriceCheckoutArea extends StatefulWidget {
  final String title;
  final VoidCallback onTap;
  const PriceCheckoutArea(
      {required this.title, required this.onTap, super.key});

  @override
  State<PriceCheckoutArea> createState() => _PriceCheckoutAreaState();
}

class _PriceCheckoutAreaState extends State<PriceCheckoutArea> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: AppColor.black100.withOpacity(0.2),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Subtotal',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w500,
                  )),
              Text('\$${AppInit.cartController.totalPrice()}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w500,
                  )),
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Total',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w500,
                  )),
              Text('\$ ${AppInit.cartController.totalPrice() + 2}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w500,
                  )),
            ],
          ),
          const SizedBox(height: 20),
          WideRoundButton(
            title: widget.title,
            onTap: widget.onTap,
          ),
        ]),
      ),
    );
  }
}
