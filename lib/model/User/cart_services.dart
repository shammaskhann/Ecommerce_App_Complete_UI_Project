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
    cartItems.forEach((element) {
      if (element['name'] == name) {
        isAdded = true;
      }
    });
    return isAdded;
  }
}
