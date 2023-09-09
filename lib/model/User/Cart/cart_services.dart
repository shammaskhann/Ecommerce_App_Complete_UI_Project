import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ecommerce_app_ui_project/Utils/util_toast.dart';

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
    for (var element in cartItems) {
      if (element['name'] == name) {
        isAdded = true;
      }
    }
    return isAdded;
  }

  double totalPrice() {
    double total = 0;
    for (var element in cartItems) {
      total += element['price'] * element['quantity'];
    }
    return total;
  }

  setCartLocalStorage() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String encodedCart = json.encode(cartItems);
    pref.setString('cartItems', encodedCart);
  }

  clearCartLocalStorage() {
    SharedPreferences.getInstance().then((pref) => pref.clear());
  }

  fetchCartLocalStorage() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? encodedCart = pref.getString('cartItems');
    if (encodedCart != null) {
      cartItems = json.decode(encodedCart);
    }
  }

  clearCart() {
    cartItems.clear();
    clearCartLocalStorage();
  }
}
