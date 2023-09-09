import 'package:ecommerce_app_ui_project/resources/AppColor.dart';
import 'package:ecommerce_app_ui_project/resources/AppIcon.dart';
import 'package:ecommerce_app_ui_project/resources/AppImage.dart';
import 'package:ecommerce_app_ui_project/view/StandardAppBar/appbar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TrackOrderSceen extends StatelessWidget {
  final int orderID;
  final String productName;
  final int productQuantity;
  final double productPrice;
  final String cardNumber;
  final String cardHolderName;
  final String deliveryMan;
  final String deliveryAddress;
  const TrackOrderSceen(
      {required this.orderID,
      required this.productName,
      required this.productQuantity,
      required this.productPrice,
      required this.cardNumber,
      required this.cardHolderName,
      required this.deliveryMan,
      required this.deliveryAddress,
      super.key});

  @override
  Widget build(BuildContext context) {
    Size? _size;
    double getTheRightSize(double screenHeight) {
      final maxHeight = 0.15 * screenHeight;
      // ignore: dead_code
      final calculatedHeight = _size?.height ?? maxHeight;
      return calculatedHeight > maxHeight
          ? maxHeight / screenHeight
          : calculatedHeight / screenHeight;
    }

    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              const StandardAppBar(title: 'Track Order'),
              const SizedBox(
                height: 10,
              ),
              //Map
              Stack(
                children: [
                  SvgPicture.asset(
                    AppImages.map,
                    width: MediaQuery.of(context).size.width * 0.9,
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey.shade300),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                //rider profile pic
                                Container(
                                  height: 39,
                                  width: 39,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                        color: Colors.white, width: 2),
                                    image: DecorationImage(
                                      image: AssetImage(AppImages.profile),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                //rider info
                                const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery Man',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey,
                                          fontFamily: 'Manrope'),
                                    ),
                                    Text(
                                      'John Smith',
                                      style: TextStyle(
                                        fontFamily: 'Manrope',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: CircleAvatar(
                                backgroundColor: AppColor.secondaryColor,
                                radius: 20,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: SvgPicture.asset(
                                    AppIcon.chat,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                ],
              ), //Delivery Time & Addresss
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //Delivery Time
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Delivery In',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                  fontFamily: 'Manrope'),
                            ),
                            Text(
                              '10 min',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontFamily: 'Manrope'),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //Delivery Address
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Delivery Address',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                  fontFamily: 'Manrope'),
                            ),
                            Text(
                              '${deliveryAddress}',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontFamily: 'Manrope'),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          DraggableScrollableSheet(
              initialChildSize:
                  getTheRightSize(MediaQuery.of(context).size.height),
              minChildSize: 0.1,
              maxChildSize: 0.8,
              builder: (context, scrollController) {
                return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                    ),
                    child: SingleChildScrollView(
                        controller: scrollController,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Container(
                                height: 7,
                                width: MediaQuery.of(context).size.width * 0.2,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            //Order Detail
                            orderDetailTemplete(
                                'Order Details', '(ID #${orderID})'),
                            //Product Name
                            orderDetailTemplete(
                                'Product Name:', '${productName}'),
                            //Quantity
                            orderDetailTemplete(
                                'Quantity:', '${productQuantity}'),
                            //Price
                            orderDetailTemplete('Price:',
                                '\$${productPrice * productQuantity}'),
                            // Card Number
                            orderDetailTemplete('Card Number:',
                                '**** **** **** ${cardNumber.substring(15)}'),
                            // Card Holder Name
                            orderDetailTemplete(
                                'Card Holder Name:', '${cardHolderName}'),
                            //Order Status
                            orderDetailTemplete('Order Status:', 'Pending'),
                          ],
                        )));
              }),
        ],
      ),
    ));
  }
}

orderDetailTemplete(String main, String sub) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            children: [
              Text(
                main,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontFamily: 'Manrope'),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                sub,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                    fontFamily: 'Manrope'),
              ),
            ],
          ),
        ),
        Divider(
          indent: 10,
          endIndent: 10,
          color: Colors.grey.withOpacity(0.5),
          thickness: 1,
        ),
      ],
    ),
  );
}
