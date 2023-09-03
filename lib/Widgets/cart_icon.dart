import 'package:ecommerce_app_ui_project/resources/AppColor.dart';
import 'package:ecommerce_app_ui_project/resources/AppIcon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../resources/AppInit.dart';
import '../view/cart_view/cart_screen.dart';

class CartIcon extends StatefulWidget {
  final Color? iconColor;
  const CartIcon({this.iconColor, super.key});

  @override
  State<CartIcon> createState() => _CartIconState();
}

class _CartIconState extends State<CartIcon> {
  @override
  Widget build(BuildContext context) {
    _refresh() async {
      setState(() {});
    }

    return (AppInit.cartController.cartItems.isNotEmpty)
        ? InkWell(
            onTap: () {
              Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CartScreen()))
                  .then((val) => {_refresh()});
            },
            child: Stack(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CartScreen()));
                    },
                    icon: SvgPicture.asset(
                      AppIcon.cartIcon,
                      color: widget.iconColor ?? Colors.white,
                    )),
                Positioned(
                  top: 8,
                  right: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        color: (widget.iconColor == null)
                            ? AppColor.secondaryColor
                            : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: (widget.iconColor == null)
                                ? AppColor.secondaryColor
                                : Colors.white.withOpacity(0.5),
                            width: 2)),
                    child: Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                        color: AppColor.amber,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          AppInit.cartController.cartItems.length.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        : IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CartScreen()));
            },
            icon: SvgPicture.asset(
              AppIcon.cartIcon,
              color: widget.iconColor ?? Colors.white,
            ));
  }
}
