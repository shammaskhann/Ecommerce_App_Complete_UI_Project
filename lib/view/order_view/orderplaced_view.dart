import 'package:ecommerce_app_ui_project/view/order_view/activeOrderList_view/active_list.dart';
import 'package:flutter/material.dart';
import '../../resources/AppColor.dart';
import 'completedOrder/completedOrderList.dart';

class OrderPlacedScreen extends StatefulWidget {
  final int? sPage;
  const OrderPlacedScreen({this.sPage, super.key});

  @override
  State<OrderPlacedScreen> createState() => _OrderPlacedScreenState();
}

class _OrderPlacedScreenState extends State<OrderPlacedScreen> {
  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            // height: MediaQuery.of(context).size.height * .2,
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () => {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            '/dashboard', (Route<dynamic> route) => false)
                      },
                      icon: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: AppColor.black10,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 12,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Orders',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w700,
                          color: AppColor.black100),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ChoiceChip(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: BorderSide(
                              color: (selectedPage == 0 && widget.sPage == null)
                                  ? AppColor.amber
                                  : AppColor.black45,
                              width: 1)),
                      label: SizedBox(
                        width: MediaQuery.of(context).size.width * .35,
                        height: 40,
                        child: Center(
                            child: Text(
                          'Current',
                          style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 14,
                              color: (selectedPage == 0 && widget.sPage == null)
                                  ? AppColor.white
                                  : AppColor.black45,
                              fontWeight: FontWeight.w600),
                        )),
                      ),
                      selected: (selectedPage == 0 && widget.sPage == null)
                          ? true
                          : false,
                      selectedColor: AppColor.amber,
                      backgroundColor: Colors.transparent,
                      onSelected: (value) {
                        setState(() {
                          selectedPage = 0;
                        });
                      },
                    ),
                    ChoiceChip(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: BorderSide(
                              color: (selectedPage == 1 || widget.sPage == 1)
                                  ? AppColor.amber
                                  : AppColor.black45,
                              width: 1)),
                      label: SizedBox(
                        width: MediaQuery.of(context).size.width * .35,
                        height: 40,
                        child: Center(
                            child: Text(
                          'Past',
                          style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 14,
                              color: (selectedPage == 1 || widget.sPage == 1)
                                  ? AppColor.white
                                  : AppColor.black45,
                              fontWeight: FontWeight.w600),
                        )),
                      ),
                      selected: (selectedPage == 1 || widget.sPage == 1)
                          ? true
                          : false,
                      selectedColor: AppColor.amber,
                      backgroundColor: Colors.transparent,
                      onSelected: (value) {
                        setState(() {
                          selectedPage = 1;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Expanded(
            child: (selectedPage == 0 && widget.sPage == null)
                ? CurrentOrderList()
                : completedOrderList(),
          ),
        ],
      ),
    ));
  }
}
