import '../../resources/AppItemsImage.dart';

class OrderController {
  List allActiveOrder = [
    // {
    //   'orderId': 74566,
    //   'cartItems': [
    //     {
    //       'name': 'Fresh Onion',
    //       'category': 'Vegetable',
    //       'tagline': 'Organic',
    //       'description':
    //           "The onion (Allium cepa) is a widely cultivated vegetable, closely related to garlic, shallots, leeks, and chives. It's known for its culinary versatility and is part of the Allium genus, which includes various onion varieties like scallions and shallots.",
    //       'img': [
    //         AppItemImage.vegOnion,
    //         AppItemImage.vegOnion2,
    //         AppItemImage.vegOnion3,
    //       ],
    //       'nurtrionalFact':
    //           "The onion (Allium cepa) is a widely cultivated vegetable, closely related to garlic, shallots, leeks, and chives. It's known for its culinary versatility and is part of the Allium genus, which includes various onion varieties like scallions and shallots.",
    //       'starRating': 4.5,
    //       'review': [
    //         {'reviewername': 'Grace', 'review': 'Good', 'starRating': 5},
    //         {
    //           'reviewername': 'Henry',
    //           'review': 'Very Very Good',
    //           'starRating': 5
    //         },
    //         {
    //           'reviewername': 'Isabella',
    //           'review': 'Very Good',
    //           'starRating': 4
    //         },
    //       ],
    //       'price': 80,
    //       'tags': ['Fresh', 'Free Delivery'],
    //       'quantity': 2,
    //     },
    //   ],
    //   'totalPrice': 160,
    //   'location': {
    //     'origin': 'Office',
    //     'address': 'House # 2, Road # 2, Block # B',
    //     'city': 'Karachi, Pakistan',
    //     'isSelected': 'true',
    //   },
    //   'deliveryMan': 'Ali Ahmed',
    //   'cardDetails': {
    //     'cardNumber': '5678 1234 9012 3456',
    //     'cardHolderName': 'Usman Rafi',
    //     'expiryDate': '12/22',
    //     'cvv': '123',
    //   },
    // }
  ];
  List allOrdersHistory = [
    {
      'orderId': 74566,
      'cartItems': [
        {
          'name': 'Fresh Onion',
          'category': 'Vegetable',
          'tagline': 'Organic',
          'description':
              "The onion (Allium cepa) is a widely cultivated vegetable, closely related to garlic, shallots, leeks, and chives. It's known for its culinary versatility and is part of the Allium genus, which includes various onion varieties like scallions and shallots.",
          'img': [
            AppItemImage.vegOnion,
            AppItemImage.vegOnion2,
            AppItemImage.vegOnion3,
          ],
          'nurtrionalFact':
              "The onion (Allium cepa) is a widely cultivated vegetable, closely related to garlic, shallots, leeks, and chives. It's known for its culinary versatility and is part of the Allium genus, which includes various onion varieties like scallions and shallots.",
          'starRating': 4.5,
          'review': [
            {'reviewername': 'Grace', 'review': 'Good', 'starRating': 5},
            {
              'reviewername': 'Henry',
              'review': 'Very Very Good',
              'starRating': 5
            },
            {
              'reviewername': 'Isabella',
              'review': 'Very Good',
              'starRating': 4
            },
          ],
          'price': 80,
          'tags': ['Fresh', 'Free Delivery'],
          'quantity': 2,
        },
        {
          'name': 'Grounded Chicken',
          'category': 'Chicken',
          'tagline': 'Fresh & Organic',
          'description':
              "Chicken is a common poultry variety found in cuisines across the globe. Its versatility in cooking methods has made it a staple in fast food and various dishes. It's sometimes considered a healthier option than red meat due to its reduced cholesterol and saturated fat content",
          'img': [
            AppItemImage.chickenGroundedMeat,
            AppItemImage.chickenGroundedMeat2,
          ],
          'nurtrionalFact':
              "Chicken is a common poultry variety found in cuisines across the globe. Its versatility in cooking methods has made it a staple in fast food and various dishes. It's sometimes considered a healthier option than red meat due to its reduced cholesterol and saturated fat content",
          'starRating': 3.5,
          'review': [
            {'reviewername': 'David', 'review': 'Organic', 'starRating': 3.5},
            {
              'reviewername': 'Frank',
              'review': 'Daado Mazo Ayo',
              'starRating': 3.5
            },
          ],
          'price': 70,
          'tags': ['Fresh', 'Halal', 'Low Price'],
          'quantity': 1,
        },
      ],
      'totalPrice': 242,
      'location': {
        'origin': 'Office',
        'address': 'House # 2, Road # 2, Block # B',
        'city': 'Karachi, Pakistan',
        'isSelected': 'true',
      },
      'deliveryMan': 'Ali Ahmed',
      'cardDetail': {
        'cardNumber': '5678 1234 9012 3456',
        'cardHolderName': 'Usman Rafi',
        'expiryDate': '12/22',
        'cvv': '123',
      },
    },
  ];
  createOrder(int orderID, List cartItems, String deliveryMan,
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
    print('Order Created');
  }

  void test1() {
    print('test1');
    print(allActiveOrder);
  }
}
