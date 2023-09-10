import 'package:ecommerce_app_ui_project/view/productPage_view/Wdigets/product_appbar.dart';
import 'package:flutter/material.dart';
import '../../Widgets/item_card2.dart';
import '../../resources/AppColor.dart';
import '../../resources/AppInit.dart';

class ProductScreen extends StatefulWidget {
  final String title;
  final String Itemtag;
  const ProductScreen({super.key, required this.title, required this.Itemtag});
  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  String? tag;
  List filteredList = [];
  @override
  void initState() {
    super.initState();
    tag ??= widget.Itemtag;
    filteredList =
        AppInit.categoryFilterController.filteredItem(tag ?? widget.Itemtag);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductAppBar(title: widget.title),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  width: 10,
                ),
                //Popular
                ChoiceChip(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide(
                          color: (tag == 'Popular')
                              ? AppColor.amber
                              : AppColor.black45,
                          width: 1)),
                  label: SizedBox(
                    width: 80,
                    height: 30,
                    child: Center(
                        child: Text(
                      'Popular',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 14,
                          color: (tag == 'Popular')
                              ? AppColor.white
                              : AppColor.black45,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                  selected: (tag == 'Popular') ? true : false,
                  selectedColor: AppColor.amber,
                  backgroundColor: Colors.transparent,
                  onSelected: (value) {
                    setState(() {
                      tag = 'Popular';
                      filteredList = AppInit.categoryFilterController
                          .filteredItem(tag ?? widget.Itemtag);
                    });
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                //Low Price
                ChoiceChip(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide(
                          color: (tag == 'Low Price')
                              ? AppColor.amber
                              : AppColor.black45,
                          width: 1)),
                  label: SizedBox(
                    width: 80,
                    height: 30,
                    child: Center(
                        child: Text(
                      'Low Price',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 14,
                          color: (tag == 'Low Price')
                              ? AppColor.white
                              : AppColor.black45,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                  selected: (tag == 'Low Price') ? true : false,
                  selectedColor: AppColor.amber,
                  backgroundColor: Colors.transparent,
                  onSelected: (value) {
                    setState(() {
                      tag = 'Low Price';
                      filteredList = AppInit.categoryFilterController
                          .filteredItem(tag ?? widget.Itemtag);
                    });
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                //Halal
                ChoiceChip(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide(
                          color: (tag == 'Halal')
                              ? AppColor.amber
                              : AppColor.black45,
                          width: 1)),
                  label: SizedBox(
                    width: 80,
                    height: 30,
                    child: Center(
                        child: Text(
                      'Halal',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 14,
                          color: (tag == 'Halal')
                              ? AppColor.white
                              : AppColor.black45,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                  selected: (tag == 'Halal') ? true : false,
                  selectedColor: AppColor.amber,
                  backgroundColor: Colors.transparent,
                  onSelected: (value) {
                    setState(() {
                      tag = 'Halal';
                      filteredList = AppInit.categoryFilterController
                          .filteredItem(tag ?? widget.Itemtag);
                    });
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                //Free Delivery
                ChoiceChip(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide(
                          color: (tag == 'Free Delivery')
                              ? AppColor.amber
                              : AppColor.black45,
                          width: 1)),
                  backgroundColor: Colors.transparent,
                  label: SizedBox(
                    width: 80,
                    height: 30,
                    child: Center(
                        child: Text(
                      'Free Delivery',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 14,
                          color: (tag == 'Free Delivery')
                              ? AppColor.white
                              : AppColor.black45,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                  selected: (tag == 'Free Delivery') ? true : false,
                  selectedColor: AppColor.amber,
                  onSelected: (value) {
                    setState(() {
                      tag = 'Free Delivery';
                      filteredList = AppInit.categoryFilterController
                          .filteredItem(tag ?? widget.Itemtag);
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: filteredList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) => ItemCard2(
                    itemMap: filteredList[index],
                    isUpdated: (value) {
                      setState(() {});
                    })),
          )
        ],
      ),
    ));
  }
}
