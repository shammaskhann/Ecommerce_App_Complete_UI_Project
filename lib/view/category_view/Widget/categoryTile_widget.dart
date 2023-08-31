import 'package:ecommerce_app_ui_project/resources/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../resources/AppInit.dart';
import '../category2_screen.dart';

class CategoryTileView extends StatelessWidget {
  final int index;
  const CategoryTileView({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 500),
                reverseTransitionDuration: const Duration(milliseconds: 500),
                pageBuilder: (context, animation, secondaryAnimation) {
                  return FadeTransition(
                    opacity: animation,
                    child: ExtendCategoryScreen(
                      index: index,
                    ),
                  );
                }));
      },
      child: Container(
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColor.black20.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              AppInit.categoryController.categoryTypes[index]['img'],
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
              AppInit.categoryController.categoryTypes[index]['name'],
              style: TextStyle(
                  color: AppColor.black100,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              AppInit.categoryController.categoryTypes[index]['tagline'],
              style: TextStyle(
                  color: AppColor.black60,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
