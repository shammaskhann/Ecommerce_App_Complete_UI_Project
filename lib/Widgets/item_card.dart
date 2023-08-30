import 'package:ecommerce_app_ui_project/resources/AppColor.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemCard extends StatelessWidget {
  late Map itemMap = {};
  ItemCard({required this.itemMap, super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          width: 160,
          decoration: BoxDecoration(
            color: AppColor.black10,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  itemMap['img'][0],
                  height: 100,
                  width: 100,
                ),
              ),
              Divider(
                color: AppColor.black20,
                thickness: 0.8,
              ),
              Text(
                itemMap['name'],
                style: TextStyle(
                    color: AppColor.black100,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                itemMap['tagline'],
                style: TextStyle(
                    color: AppColor.black60,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 7),
                  width: 150,
                  decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [
                            Text(
                              'Unit',
                              style: TextStyle(
                                  fontFamily: 'Manrope',
                                  color: AppColor.black20,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '\$ ${itemMap['price']}',
                              style: TextStyle(
                                  color: AppColor.black100,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                            backgroundColor: AppColor.secondaryColor,
                            radius: 16,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 18,
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
