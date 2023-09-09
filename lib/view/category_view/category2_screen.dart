import 'package:ecommerce_app_ui_project/resources/AppColor.dart';
import 'package:ecommerce_app_ui_project/view/category_view/catergoryScreen/fruit_shop_view.dart';
import 'package:ecommerce_app_ui_project/view/category_view/catergoryScreen/seafood_shop_view.dart';
import 'package:flutter/material.dart';

import 'catergoryScreen/chicken_shop_view.dart';
import 'catergoryScreen/veg_shop_view.dart';

class ExtendCategoryScreen extends StatefulWidget {
  final int index;
  const ExtendCategoryScreen({required this.index, super.key});

  @override
  State<ExtendCategoryScreen> createState() => _ExtendCategoryScreenState();
}

class _ExtendCategoryScreenState extends State<ExtendCategoryScreen> {
  var CategoryPage = const [
    ChickenShop(),
    SeafoodShop(),
    FruitShop(),
    ChickenShop(),
    VegShop(),
  ];
  int? selectedPage;
  @override
  void initState() {
    print(selectedPage);
    // TODO: implement initState
    super.initState();
    (selectedPage == null)
        ? selectedPage = widget.index
        : selectedPage = selectedPage;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                width: 10,
              ),
              ChoiceChip(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide(
                        color: (selectedPage == 0 || selectedPage == 3)
                            ? AppColor.amber
                            : AppColor.black45,
                        width: 1)),
                label: SizedBox(
                  width: 80,
                  height: 30,
                  child: Center(
                      child: Text(
                    'Meat Section',
                    style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 14,
                        color: (selectedPage == 0 || selectedPage == 3)
                            ? AppColor.white
                            : AppColor.black45,
                        fontWeight: FontWeight.w600),
                  )),
                ),
                selected:
                    (selectedPage == 0 || selectedPage == 3) ? true : false,
                selectedColor: AppColor.amber,
                backgroundColor: Colors.transparent,
                onSelected: (value) {
                  setState(() {
                    selectedPage = 0;
                  });
                },
              ),
              const SizedBox(
                width: 10,
              ),
              ChoiceChip(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide(
                        color: (selectedPage == 1)
                            ? AppColor.amber
                            : AppColor.black45,
                        width: 1)),
                label: SizedBox(
                  width: 80,
                  height: 30,
                  child: Center(
                      child: Text(
                    'Sea Food',
                    style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 14,
                        color: (selectedPage == 1)
                            ? AppColor.white
                            : AppColor.black45,
                        fontWeight: FontWeight.w600),
                  )),
                ),
                selected: (selectedPage == 1) ? true : false,
                selectedColor: AppColor.amber,
                backgroundColor: Colors.transparent,
                onSelected: (value) {
                  setState(() {
                    selectedPage = 1;
                  });
                },
              ),
              const SizedBox(
                width: 10,
              ),
              ChoiceChip(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide(
                        color: (selectedPage == 2)
                            ? AppColor.amber
                            : AppColor.black45,
                        width: 1)),
                label: SizedBox(
                  width: 80,
                  height: 30,
                  child: Center(
                      child: Text(
                    'Fruits',
                    style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 14,
                        color: (selectedPage == 2)
                            ? AppColor.white
                            : AppColor.black45,
                        fontWeight: FontWeight.w600),
                  )),
                ),
                selected: (selectedPage == 2) ? true : false,
                selectedColor: AppColor.amber,
                backgroundColor: Colors.transparent,
                onSelected: (value) {
                  setState(() {
                    selectedPage = 2;
                  });
                },
              ),
              const SizedBox(
                width: 10,
              ),
              ChoiceChip(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide(
                        color: (selectedPage == 4)
                            ? AppColor.amber
                            : AppColor.black45,
                        width: 1)),
                backgroundColor: Colors.transparent,
                label: SizedBox(
                  width: 80,
                  height: 30,
                  child: Center(
                      child: Text(
                    'Vegetables',
                    style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 14,
                        color: (selectedPage == 4)
                            ? AppColor.white
                            : AppColor.black45,
                        fontWeight: FontWeight.w600),
                  )),
                ),
                selected: (selectedPage == 4) ? true : false,
                selectedColor: AppColor.amber,
                onSelected: (value) {
                  setState(() {
                    selectedPage = 4;
                  });
                },
              ),
            ],
          ),
        ),
        CategoryPage[selectedPage ?? widget.index],
      ],
    );
  }
}
