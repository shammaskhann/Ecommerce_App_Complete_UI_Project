import 'package:ecommerce_app_ui_project/resources/AppColor.dart';
import 'package:ecommerce_app_ui_project/view/StandardAppBar/appbar_view.dart';
import 'package:ecommerce_app_ui_project/view/order_view/orderplaced_view.dart';
import 'package:flutter/material.dart';

class MoreOptionScreen extends StatefulWidget {
  const MoreOptionScreen({super.key});

  @override
  State<MoreOptionScreen> createState() => _MoreOptionScreenState();
}

class _MoreOptionScreenState extends State<MoreOptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const StandardAppBar(
            title: 'More Options',
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: AppColor.black100,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: AppColor.amber,
                    backgroundImage:
                        const AssetImage("assets/images/profile.png"),
                    radius: 30,
                  ),
                  title: const Text(
                    "Halal",
                    style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  subtitle: const Text(
                    "example123@gmail.com",
                    style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  trailing: const Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "OPTIONS",
              style: TextStyle(
                  color: AppColor.black100,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Manrope'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: AppColor.black100,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: AppColor.amber,
                        child:
                            const Icon(Icons.location_on, color: Colors.black),
                      ), //Icon(Icons.person),
                      title: const Text(
                        "Address",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                      subtitle: const Text(
                        "Change your address",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                      trailing: const Icon(Icons.edit, color: Colors.white),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, '/orderPlaced');
                      },
                      leading: CircleAvatar(
                        backgroundColor: AppColor.amber,
                        child: const Icon(Icons.local_shipping,
                            color: Colors.black),
                      ), //Icon(Icons.person),
                      title: const Text(
                        "Current Order",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),

                      subtitle: const Text(
                        "Track your order",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                      trailing:
                          const Icon(Icons.arrow_right, color: Colors.white),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OrderPlacedScreen(
                                      sPage: 1,
                                    )));
                      },
                      leading: CircleAvatar(
                        backgroundColor: AppColor.amber,
                        child: const Icon(Icons.history, color: Colors.black),
                      ), //Icon(Icons.person),
                      title: const Text(
                        "Order History",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                      subtitle: const Text(
                        "View your order history",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                      trailing:
                          const Icon(Icons.arrow_right, color: Colors.white),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: AppColor.amber,
                        child: const Icon(Icons.help, color: Colors.black),
                      ), //Icon(Icons.person),
                      title: const Text(
                        "Help",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                      subtitle: const Text(
                        "Help and support",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                      trailing:
                          const Icon(Icons.arrow_right, color: Colors.white),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: AppColor.amber,
                        child: const Icon(Icons.logout, color: Colors.black),
                      ), //Icon(Icons.person),
                      title: const Text(
                        "Logout",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                      subtitle: const Text(
                        "Logout from the app",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                      trailing: const Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
      // backgroundColor: AppColor.black100,
    );
  }
}
