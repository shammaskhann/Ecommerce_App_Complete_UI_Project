import 'package:flutter/material.dart';
import '../../../resources/AppColor.dart';

class CustomTextFeild extends StatelessWidget {
  final String title;
  final String hintText;
  final formatter;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  const CustomTextFeild({
    Key? key,
    required this.title,
    this.formatter,
    required this.hintText,
    required this.controller,
    required this.keyboardType,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Colors.grey),
        ),
        TextFormField(
          inputFormatters: formatter,
          controller: controller,
          keyboardType: keyboardType,
          style: const TextStyle(
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.black),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.grey.withOpacity(.5)),
            disabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(width: .3, color: Colors.grey),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 1, color: AppColor.amber),
            ),
            errorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(width: .5, color: Colors.red),
            ),
          ),
          validator: validator,
        )
      ],
    );
  }
}
