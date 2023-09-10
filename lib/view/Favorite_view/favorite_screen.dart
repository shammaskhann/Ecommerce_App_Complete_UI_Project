import 'package:ecommerce_app_ui_project/resources/AppColor.dart';
import 'package:ecommerce_app_ui_project/view/product_detail_view/widget/fav_icon.dart';
import 'package:flutter/material.dart';

import '../../resources/AppInit.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Text(
                  'Your Favourite Items(${AppInit.favController.favItems.length})',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w700,
                      color: AppColor.black100),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                //physics: const NeverScrollableScrollPhysics(),
                itemCount: AppInit.favController.favItems.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            // Image
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(AppInit
                                      .favController.favItems[index]['img'][0]),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            // Text
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Name
                                    Text(
                                      AppInit.favController.favItems[index]
                                          ['name'],
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    // Price
                                    Text(
                                      '\$${AppInit.favController.favItems[index]['price']}'
                                          .toString(),
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {
                                setState(() {});
                              },
                              child: FavICon(
                                  isUpdated: (bool isUpdated) {
                                    setState(() {});
                                  },
                                  ItemMap:
                                      AppInit.favController.favItems[index]),
                            ),
                          ],
                        ),
                        // Divider
                        const Divider(
                          indent: 10,
                          endIndent: 10,
                          thickness: 1,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
      backgroundColor: AppColor.white,
    );
  }
}
