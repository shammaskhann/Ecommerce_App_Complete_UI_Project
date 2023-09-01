import 'package:ecommerce_app_ui_project/Utils/util_toast.dart';
import 'package:ecommerce_app_ui_project/view/cart_view/cart_screen.dart';
import 'package:flutter/material.dart';

class CartController {
  List cartItems = [];
  addToCart(Map item) {
    item.putIfAbsent('quantity', () => 1);
    cartItems.add(item);
    //toast message
    UtilToast().showToast("Item added to cart");
  }

  removeFromCart(String name) {
    cartItems.removeWhere((element) => element['name'] == name);
    //toast message
    UtilToast().showToast("Item removed from cart");
  }

  isAdded(String name) {
    bool isAdded = false;
    cartItems.forEach((element) {
      if (element['name'] == name) {
        isAdded = true;
      }
    });
    return isAdded;
  }

  quantityIncrement(int index) {
    if (cartItems[index]['quantity'] >= 10) {
      UtilToast().showToast("You can't add more than 10 items");
    } else if (cartItems[index]['quantity'] < 10) {
      cartItems[index]['quantity']++;
    }
  }

  quantityDecrement(BuildContext context, int index) {
    if (cartItems[index]['quantity'] <= 1) {
      showDialog(
          context: context,
          builder: ((context) => AlertDialog(
                title: const Text("Remove item"),
                content:
                    const Text("Are you sure you want to remove this item?"),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      child: const Text("No")),
                  TextButton(
                      onPressed: () {
                        removeFromCart(cartItems[index]['name']);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                maintainState: false,
                                builder: (context) => const CartScreen()));
                      },
                      child: const Text("Yes")),
                ],
              )));
    } else if (cartItems[index]['quantity'] > 1) {
      cartItems[index]['quantity']--;
    }
  }

  double totalPrice() {
    double total = 0;
    cartItems.forEach((element) {
      total += element['price'] * element['quantity'];
    });
    return total;
  }
}
