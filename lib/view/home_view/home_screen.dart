import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app_ui_project/Widgets/item_card.dart';
import 'package:ecommerce_app_ui_project/resources/AppColor.dart';
import 'package:ecommerce_app_ui_project/view/home_view/Widgets/banner2_view.dart';
import 'package:ecommerce_app_ui_project/view/home_view/Widgets/home_appbar.dart';
import 'package:ecommerce_app_ui_project/view/home_view/Widgets/banner1_view.dart';
import 'package:flutter/material.dart';

import '../../resources/AppInit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return await showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: const Text("Are you sure?"),
                  content: const Text("Do you want to exit the app?"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        child: const Text("No")),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: const Text("Yes")),
                  ],
                ));
      },
      child: Scaffold(
        extendBody: true,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeAppBar(),
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CarouselSlider(
                      items: const [
                        Banner1(),
                        Banner2(),
                      ],
                      options: CarouselOptions(
                        height: 170,
                        viewportFraction: 0.7,
                        initialPage: 0,
                        enableInfiniteScroll: false,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Recommended',
                        style: TextStyle(
                            fontFamily: 'Manrope',
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: AppColor.black90),
                      ),
                    ),
                    SizedBox(
                      //color: Colors.red,
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: double.infinity,
                      child: Center(
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount:
                                AppInit.recomendedItems.RecomenededItem.length,
                            itemBuilder: (context, index) {
                              return ItemCard(
                                  itemMap: AppInit
                                      .recomendedItems.RecomenededItem[index]);
                            }),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //replica for checking purpose :)
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Recommended',
                        style: TextStyle(
                            fontFamily: 'Manrope',
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: AppColor.black90),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 90.0),
                      child: SizedBox(
                        //color: Colors.red,
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: double.infinity,
                        child: Center(
                          child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: AppInit
                                  .recomendedItems.RecomenededItem.length,
                              itemBuilder: (context, index) {
                                return ItemCard(
                                    itemMap: AppInit.recomendedItems
                                        .RecomenededItem[index]);
                              }),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
