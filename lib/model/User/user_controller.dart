import '../../resources/AppInit.dart';

class User {
  late List paymentMethod;
  List Location = [
    '18th Street, DHA phase 5',
    'Street No: 7 ,Gulberg',
    'House No:14, Malir Cantt',
  ];
  addToFav(Map item) {
    AppInit.favController.addToFav(item);
  }

  addToCart(Map item) {
    AppInit.cartController.addToCart(item);
  }
}
