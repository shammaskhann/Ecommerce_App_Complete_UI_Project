import 'package:flutter/material.dart';

import '../../../resources/AppColor.dart';
import '../../../resources/AppImage.dart';
import '../../../resources/AppInit.dart';
import '../../trackOrder_view/trackOrder_screen.dart';
import 'TrackOrderButton.dart';

class CurrentOrderList extends StatelessWidget {
  const CurrentOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return (AppInit.orderController.allActiveOrder.isNotEmpty)
        ? ListView.builder(
            shrinkWrap: true,
            itemCount:
                AppInit.orderController.allActiveOrder[0]['cartItems'].length,
            itemBuilder: (context, index) {
              return Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //First Row containing Image,Name,Price and ID
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                    AppInit.orderController.allActiveOrder[0]
                                        ['cartItems'][index]['img'][0]),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          //Name tag and Price Sec
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${AppInit.orderController.allActiveOrder[0]['cartItems'][index]['name']} (x${AppInit.orderController.allActiveOrder[0]['cartItems'][index]['quantity']})',
                                style: const TextStyle(
                                    fontFamily: 'Manrope',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey),
                              ),
                              Text(
                                '\$${AppInit.orderController.allActiveOrder[0]['cartItems'][index]['price']}',
                                style: const TextStyle(
                                  fontFamily: 'Manrope',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          //order id no
                          Text(
                            'ID: #${AppInit.orderController.allActiveOrder[0]['orderId']}',
                            style: const TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      //Second row containing rider info and order track
                      Row(
                        children: [
                          //delivery truck image and rider profile
                          Column(
                            children: [
                              Container(
                                height: 115,
                                child: Stack(
                                  children: [
                                    SizedBox(
                                      height: 110,
                                      width: 190,
                                      child: Image(
                                          image: AssetImage(
                                              AppImages.deliverytruck)),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 82,
                                      child: Container(
                                        height: 39,
                                        width: 39,
                                        decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          border: Border.all(
                                              color: Colors.white, width: 2),
                                          image: DecorationImage(
                                            image:
                                                AssetImage(AppImages.profile),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Text('Meet our rider, John Smith',
                                  style: TextStyle(
                                      fontFamily: 'Manrope',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey)),
                            ],
                          ),
                          //Track Button
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Your ${AppInit.orderController.allActiveOrder[0]['cartItems'][index]['name']}',
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                                const Text(
                                  'are on the way',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                                TrackOrderButton(
                                    title: 'Track Order',
                                    textColor: Colors.white,
                                    buttonColor: AppColor.secondaryColor,
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  TrackOrderSceen(
                                                    orderID: AppInit
                                                            .orderController
                                                            .allActiveOrder[0]
                                                        ['orderId'],
                                                    productName: AppInit
                                                                .orderController
                                                                .allActiveOrder[
                                                            0]['cartItems']
                                                        [index]['name'],
                                                    productQuantity: AppInit
                                                                .orderController
                                                                .allActiveOrder[
                                                            0]['cartItems']
                                                        [index]['quantity'],
                                                    productPrice: AppInit
                                                        .orderController
                                                        .allActiveOrder[0]
                                                            ['cartItems'][index]
                                                            ['price']
                                                        .toDouble(),
                                                    cardNumber: AppInit
                                                                .orderController
                                                                .allActiveOrder[
                                                            0]['cardDetail']
                                                        ['cardNumber'],
                                                    cardHolderName: AppInit
                                                                .orderController
                                                                .allActiveOrder[
                                                            0]['cardDetail']
                                                        ['cardHolderName'],
                                                    deliveryMan: AppInit
                                                            .orderController
                                                            .allActiveOrder[0]
                                                        ['deliveryMan'],
                                                    deliveryAddress: AppInit
                                                            .orderController
                                                            .allActiveOrder[0]
                                                        ['location']['address'],
                                                  )));
                                    }),
                              ],
                            ),
                          ),
                        ],
                      ),
                      //Divider
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ],
                  ));
            })
        : const Center(
            child: Text(
            'No Orders Yet',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w700),
          ));
  }
}
