import '../../resources/AppInit.dart';

class User {
  addToFav(Map item) {
    AppInit.favController.addToFav(item);
  }

  addToCart(Map item) {
    AppInit.cartController.addToCart(item);
  }
}
