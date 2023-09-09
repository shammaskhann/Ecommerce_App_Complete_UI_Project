import 'package:ecommerce_app_ui_project/view/Favorite_view/favorite_screen.dart';
import 'package:ecommerce_app_ui_project/view/category_view/category_screen.dart';
import 'package:ecommerce_app_ui_project/view/checkout_view/screens/addCard_screen.dart';
import 'package:ecommerce_app_ui_project/view/checkout_view/screens/location_selection_screen.dart';
import 'package:ecommerce_app_ui_project/view/dashboard_view/dashboard_screen.dart';
import 'package:ecommerce_app_ui_project/view/home_view/home_screen.dart';
import 'package:ecommerce_app_ui_project/view/moreoption_view/moreoption_screen.dart';
import 'package:ecommerce_app_ui_project/view/onboarding_view/onboarding_screen.dart';
import 'package:ecommerce_app_ui_project/view/order_view/orderplaced_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const OnBoardingScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/home': (context) => const HomeScreen(),
        '/category': (context) => const CategoryScreen(),
        '/favorite': (context) => const FavoriteScreen(),
        '/moreOption': (context) => const MoreOptionScreen(),
        '/selectLocation': (context) => const LocationSelectionScreen(),
        '/addCard': (context) => AddCardScreen(),
        '/orderPlaced': (context) => const OrderPlacedScreen(),
      },
      // onGenerateRoute: (settings) {
      //   if (settings.name == '/extended_category') {
      //     final index = settings.arguments as int;
      //     return MaterialPageRoute(
      //       builder: (context) {
      //         return ExtendCategoryScreen(
      //           index: index,
      //         );
      //       },
      //     );
      //   }
      //   if (settings.name == '/trackOrder') {
      //     final orderId = settings.arguments as int;
      //     final String productName = settings.arguments as String;
      //     final int productQuantity = settings.arguments as int;
      //     final double productPrice = settings.arguments as double;
      //     final String cardNumber = settings.arguments as String;
      //     final String cardHolderName = settings.arguments as String;
      //     final String deliveryMan = settings.arguments as String;
      //     final String deliveryAddress = settings.arguments as String;
      //     return MaterialPageRoute(
      //       builder: (context) {
      //         return TrackOrderSceen(
      //           orderID: orderId,
      //           productName: productName,
      //           productQuantity: productQuantity,
      //           productPrice: productPrice,
      //           cardNumber: cardNumber,
      //           cardHolderName: cardHolderName,
      //           deliveryMan: deliveryMan,
      //           deliveryAddress: deliveryAddress,
      //         );
      //       },
      //     );
      //   }
      // },
      debugShowCheckedModeBanner: false,
    );
  }
}
