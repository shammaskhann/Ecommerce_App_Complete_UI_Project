import 'package:flutter/material.dart';

import '../../Widgets/cart_icon.dart';

class ProductScreen extends StatefulWidget {
  final String title;
  const ProductScreen({required this.title});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          }, // () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(widget.title),
        actions: [
          CartIcon(),
        ], // widget.title
      ),
      body: Center(
        child: Text('Product Page'),
      ),
    );
  }
}
