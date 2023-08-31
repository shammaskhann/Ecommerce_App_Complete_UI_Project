import 'package:ecommerce_app_ui_project/resources/AppColor.dart';
import 'package:flutter/material.dart';

class DeliveryTimeSelection extends StatefulWidget {
  static String? selectedTime;
  const DeliveryTimeSelection({super.key});

  @override
  State<DeliveryTimeSelection> createState() => _DeliveryTimeSelectionState();
}

class _DeliveryTimeSelectionState extends State<DeliveryTimeSelection> {
  String? selectedTime = DeliveryTimeSelection.selectedTime;
  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      width: 95,
      label: Text('WITHIN',
          style: TextStyle(
              color: AppColor.black60,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Manrope')),
      textStyle: TextStyle(
          fontFamily: 'Manrope',
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: AppColor.white),
      initialSelection: '1',
      inputDecorationTheme: InputDecorationTheme(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelStyle: TextStyle(
            fontFamily: 'Manrope',
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: AppColor.white),
        labelStyle: TextStyle(
            fontFamily: 'Manrope',
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: AppColor.white),
        border: InputBorder.none,
        contentPadding: EdgeInsets.zero,
      ),
      trailingIcon: Icon(
        Icons.keyboard_arrow_down,
        color: AppColor.black60,
      ),
      dropdownMenuEntries: const [
        DropdownMenuEntry(value: '1', label: '1 Hour'),
        DropdownMenuEntry(value: '2', label: '2 Hour'),
        DropdownMenuEntry(value: '3', label: '3 Hour'),
      ],
      onSelected: (value) {
        setState(() {
          selectedTime = value;
        });
      },
    );
  }
}
