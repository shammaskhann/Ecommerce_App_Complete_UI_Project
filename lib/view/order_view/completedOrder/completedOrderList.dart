import 'package:ecommerce_app_ui_project/resources/AppColor.dart';
import 'package:flutter/material.dart';
import '../../../resources/AppInit.dart';

class completedOrderList extends StatefulWidget {
  const completedOrderList({super.key});
  @override
  State<completedOrderList> createState() => _completedOrderListState();
}

class _completedOrderListState extends State<completedOrderList> {
  @override
  Widget build(BuildContext context) {
    return (AppInit.orderController.allOrdersHistory.isNotEmpty)
        ? ListView.builder(
            shrinkWrap: true,
            itemCount:
                AppInit.orderController.allOrdersHistory[0]['cartItems'].length,
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
                                    AppInit.orderController.allOrdersHistory[0]
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
                                '${AppInit.orderController.allOrdersHistory[0]['cartItems'][index]['name']} (x${AppInit.orderController.allOrdersHistory[0]['cartItems'][index]['quantity']})',
                                style: const TextStyle(
                                    fontFamily: 'Manrope',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey),
                              ),
                              Text(
                                '${AppInit.orderController.allOrdersHistory[0]['cartItems'][index]['name']}',
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
                            'ID: ${AppInit.orderController.allOrdersHistory[0]['orderId']}',
                            style: const TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      //Divider
                      const SizedBox(
                        height: 20,
                      ),
                      //Second row containing rider info and order track
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          //delivery truck image and rider profile
                          const Text(
                            '02/10/2021',
                            style: TextStyle(
                                fontFamily: 'Manrope',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          ),
                          const Spacer(),
                          Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.5),
                            ),
                            child: Center(
                                child: Text(
                              'Success',
                              style: TextStyle(
                                  fontFamily: 'Manrope',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.secondaryColor),
                            )),
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
