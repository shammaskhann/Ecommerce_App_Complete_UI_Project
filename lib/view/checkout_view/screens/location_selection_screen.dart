import 'package:ecommerce_app_ui_project/Widgets/WideRoundButto.dart';
import 'package:ecommerce_app_ui_project/Widgets/edit_Location.dart';
import 'package:ecommerce_app_ui_project/resources/AppColor.dart';
import 'package:ecommerce_app_ui_project/resources/AppInit.dart';
import 'package:ecommerce_app_ui_project/view/StandardAppBar/appbar_view.dart';
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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StandardAppBar(
              title:
                  'Shopping Cart (${AppInit.cartController.cartItems.length})',
            ),
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
                itemCount: AppInit.locationController.Location.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      AppInit.locationController.locationSelect(index);
                      setState(() {});
                    },
                    child: Container(
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                          border: Border.all(
                            width: 2,
                            color: (AppInit.locationController.Location[index]
                                        ['isSelected'] ==
                                    'true')
                                ? AppColor.amber
                                : AppColor.black100.withOpacity(0.2),
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
                                style: const TextStyle(
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
                              Icon(Icons.check_circle,
                                  color: (AppInit.locationController
                                              .Location[index]['isSelected'] ==
                                          'true')
                                      ? AppColor.amber
                                      : AppColor.white),
                              const Text(
                                'Edit',
                                style: TextStyle(),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) =>
                            EditLocationDailog(isUpdated: (value) {
                              setState(() {});
                            }));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                          radius: 10,
                          backgroundColor: AppColor.black100,
                          child:
                              Icon(Icons.add, size: 15, color: AppColor.amber)),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text('Add New Address',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Marope',
                              fontWeight: FontWeight.w500))
                    ],
                  )),
            ),
            const Spacer(),
            WideRoundButton(
                title: 'ADD CARD',
                onTap: () {
                  Navigator.pushNamed(context, '/addCard'); //AddCardScreen
                })
          ],
        ),
      ),
    );
  }
}
