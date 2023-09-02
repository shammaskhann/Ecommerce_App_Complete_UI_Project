import 'package:ecommerce_app_ui_project/resources/AppColor.dart';
import 'package:ecommerce_app_ui_project/resources/AppInit.dart';
import 'package:ecommerce_app_ui_project/view/cart_view/Widgets/cart_AppBar.dart';
import 'package:flutter/material.dart';

class LocationSelectionScreen extends StatefulWidget {
  const LocationSelectionScreen({super.key});

  @override
  State<LocationSelectionScreen> createState() =>
      _LocationSelectionScreenState();
}

class _LocationSelectionScreenState extends State<LocationSelectionScreen> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CartAppBar(),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Delivery Address",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                        border: Border.all(
                          width: 2,
                          color: AppColor.amber,
                        )),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              AppInit.locationController.Location[index]
                                  ['origin'],
                              style: const TextStyle(
                                fontFamily: 'Manrope',
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              AppInit.locationController.Location[index]
                                  ['address'],
                              style: const TextStyle(
                                fontFamily: 'Manrope',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              AppInit.locationController.Location[index]
                                  ['city'],
                              style: TextStyle(
                                fontFamily: 'Manrope',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.check_circle, color: AppColor.amber),
                            const Text(
                              'Edit',
                              style: TextStyle(),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
