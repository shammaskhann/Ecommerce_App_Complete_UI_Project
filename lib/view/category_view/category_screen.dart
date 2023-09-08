import 'package:ecommerce_app_ui_project/resources/AppInit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../resources/AppColor.dart';
import 'Widget/category_appbar_view.dart';
import 'category2_screen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  bool extend = false;
  int indexS = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CategoryAppBar(),
          Expanded(
              child: (!extend)
                  ? GridView.builder(
                      padding: EdgeInsets.only(bottom: 70),
                      shrinkWrap: true,
                      itemCount:
                          AppInit.categoryController.categoryTypes.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        // return CategoryTileView(index: index);
                        return InkWell(
                          onTap: () {
                            indexS = index;
                            setState(() {
                              extend = !extend;
                            });
                            // Navigator.push(
                            //     context,
                            //     PageRouteBuilder(
                            //         transitionDuration:
                            //             const Duration(milliseconds: 500),
                            //         reverseTransitionDuration:
                            //             const Duration(milliseconds: 500),
                            //         pageBuilder:
                            //             (context, animation, secondaryAnimation) {
                            //           return FadeTransition(
                            //             opacity: animation,
                            //             child: ExtendCategoryScreen(
                            //               index: index,
                            //             ),
                            //           );
                            //         }));
                          },
                          child: Container(
                            margin: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: AppColor.black20.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  AppInit.categoryController
                                      .categoryTypes[index]['img'],
                                  height: 100,
                                  width: 100,
                                ),
                                Divider(
                                  indent: 30,
                                  endIndent: 30,
                                  color: AppColor.black20,
                                  thickness: 0.8,
                                ),
                                Text(
                                  AppInit.categoryController
                                      .categoryTypes[index]['name'],
                                  style: TextStyle(
                                      color: AppColor.black100,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  AppInit.categoryController
                                      .categoryTypes[index]['tagline'],
                                  style: TextStyle(
                                      color: AppColor.black60,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  : ExtendCategoryScreen(index: indexS)),
        ],
      ),
    );
  }
}
