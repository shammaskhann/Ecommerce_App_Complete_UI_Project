import 'package:ecommerce_app_ui_project/resources/AppText.dart';
import 'package:flutter/material.dart';

class ShowDescriptionFact extends StatelessWidget {
  final String description;
  const ShowDescriptionFact({required this.description, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(description, style: AppText.productDescription);
  }
}
