import 'package:flutter/material.dart';

import '../resources/AppColor.dart';
import '../resources/AppInit.dart';

class EditLocationDailog extends StatefulWidget {
  final Function(bool) isUpdated;
  const EditLocationDailog({required this.isUpdated, super.key});

  @override
  State<EditLocationDailog> createState() => _EditLocationDailogState();
}

class _EditLocationDailogState extends State<EditLocationDailog> {
  final form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
          child: Text(
        'ADD NEW ADDRESS',
        style: TextStyle(
            color: AppColor.black100,
            fontWeight: FontWeight.w800,
            fontSize: 18,
            fontFamily: 'Manrope'),
      )),
      content: Form(
        key: form,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter Origin',
              style: TextStyle(
                  color: AppColor.black100,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  fontFamily: 'Manrope'),
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter Origin';
                }
                return null;
              },
              controller: AppInit.locationController.orginController,
              decoration: InputDecoration(
                disabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(width: .3, color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 1, color: AppColor.amber),
                ),
                errorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(width: .5, color: Colors.red),
                ),
                hintText: "Home/Office/Other",
                suffixIcon: Icon(
                  Icons.house,
                  color: AppColor.lightAmber,
                ),
              ),
            ),
            SizedBox(
              height: 10,
              width: MediaQuery.of(context).size.width,
            ),
            Text(
              'Enter Address',
              style: TextStyle(
                  color: AppColor.black100,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  fontFamily: 'Manrope'),
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter Address';
                }
                return null;
              },
              controller: AppInit.locationController.addressController,
              decoration: InputDecoration(
                disabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(width: .3, color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 1, color: AppColor.amber),
                ),
                errorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(width: .5, color: Colors.red),
                ),
                hintText:
                    "House # 00, Road # 0, Block # F", //prefixIcon: Icon(Icons.edit_document)
                suffixIcon: Icon(
                  Icons.edit_document,
                  color: AppColor.lightAmber,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Enter City',
              style: TextStyle(
                  color: AppColor.black100,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  fontFamily: 'Manrope'),
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter card number';
                }
                return null;
              },
              controller: AppInit.locationController.cityController,
              decoration: InputDecoration(
                disabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(width: .3, color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 1, color: AppColor.amber),
                ),
                errorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(width: .5, color: Colors.red),
                ),
                hintText: "Karachi,Pakistan",
                suffixIcon: Icon(
                  Icons.edit_document,
                  color: AppColor.lightAmber,
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: AppColor.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  AppInit.locationController.addLocation();
                  widget.isUpdated(true);
                  AppInit.locationController.controllerCler();
                  Navigator.of(context).pop(true);
                },
                child: Center(
                    child: Text('ADD LOCATION',
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColor.black100,
                          fontWeight: FontWeight.bold,
                        ))))
          ],
        ),
      ),
    );
  }
}
