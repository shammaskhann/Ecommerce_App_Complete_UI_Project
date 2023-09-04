class OrderController {
  List allActiveOrder = [];
  List allOrdersHistory = [];
  void createOrder(int orderID, List cartItems, String deliveryMan,
      double totalPrice, Map location, Map cardDetail) {
    //create order
    Map orderDetails = {
      'orderId': orderID,
      'cartItems': cartItems,
      'totalPrice': totalPrice,
      'location': location,
      'deliveryMan': deliveryMan,
      'cardDetail': cardDetail,
    };
    print(orderDetails);
    allActiveOrder.add(orderDetails);
  }
}
