class CartController {
  List cartItems = [];
  addToCart(Map item) {
    cartItems.add(item);
    //toast message
  }
}
