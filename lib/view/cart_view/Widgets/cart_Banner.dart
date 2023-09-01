import 'package:ecommerce_app_ui_project/resources/AppColor.dart';
import 'package:ecommerce_app_ui_project/resources/AppIcon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartBanner extends StatelessWidget {
  const CartBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AppColor.lightAmber,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: -140,
                    left: -40,
                    child: Text(
                      '#',
                      style: TextStyle(
                          fontSize: 400,
                          fontFamily: 'Manrope',
                          color: AppColor.amber),
                    ),
                  ),
                  Positioned(
                      bottom: 140,
                      right: 40,
                      child: SvgPicture.asset(AppIcon.vector368)),
                  Positioned(
                    bottom: 100,
                    right: 40,
                    child: Text('OFF!!',
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w800,
                            color: AppColor.white)),
                  ),
                  Positioned(
                    bottom: -20,
                    right: 30,
                    child: Text('25%',
                        style: TextStyle(
                            fontSize: 150,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w800,
                            color: AppColor.white)),
                  )
                ],
              )),
        ),
        Container(
          height: 40,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: AppColor.amber),
          child: Padding(
            padding: const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 10.0),
            child: Text('Use code #HalalFood at Checkout',
                style: TextStyle(
                    color: AppColor.black100,
                    fontFamily: 'Manrope',
                    fontSize: 20,
                    fontWeight: FontWeight.w500)),
          ),
        ),
      ],
    );
  }
}
