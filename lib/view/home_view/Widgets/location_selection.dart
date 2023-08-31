import 'package:flutter/material.dart';

import '../../../resources/AppColor.dart';

class LocationSelectionWidget extends StatefulWidget {
  static var selectedLocation = 'SELECT LOCATION';
  const LocationSelectionWidget({super.key});

  @override
  State<LocationSelectionWidget> createState() =>
      _LocationSelectionWidgetState();
}

class _LocationSelectionWidgetState extends State<LocationSelectionWidget> {
  String? selectedLocation = LocationSelectionWidget.selectedLocation;
  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      width: 170,
      label: Text(
        'DELIVER TO',
        style: TextStyle(
            fontFamily: 'Manrope',
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: AppColor.black60),
      ),
      textStyle: TextStyle(
          fontFamily: 'Manrope',
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: AppColor.white),
      initialSelection: 'Bahadrabad',
      inputDecorationTheme: InputDecorationTheme(
        isDense: true,
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
        DropdownMenuEntry(value: 'Bahadrabad', label: 'Bahadrabad,Karachi'),
        DropdownMenuEntry(value: 'Hassan Squre', label: 'Hassan Squre,Karachi'),
        DropdownMenuEntry(value: 'Nazimabad', label: 'Nazimabad,Karachi'),
      ],
      onSelected: (value) {
        setState(() {
          selectedLocation = value;
        });
      },
    );
  }
}
