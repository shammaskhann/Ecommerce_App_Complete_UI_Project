import 'package:ecommerce_app_ui_project/resources/AppImage.dart';
import 'package:ecommerce_app_ui_project/view/Favorite_view/favorite_screen.dart';
import 'package:ecommerce_app_ui_project/view/category_view/category_screen.dart';
import 'package:ecommerce_app_ui_project/view/home_view/home_screen.dart';
import 'package:ecommerce_app_ui_project/view/moreoption_view/moreoption_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../resources/AppColor.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  //int index = 0; //for bottom navigation bar
  var currentPage = 0;
  final _controller = NotchBottomBarController(index: 0);
  final _pageController = PageController(initialPage: 0);
  List Page = const [
    HomeScreen(),
    CategoryScreen(),
    FavoriteScreen(),
    MoreOptionScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageView(
        scrollDirection: Axis.horizontal,
        onPageChanged: (index) {
          setState(() {
            currentPage = index;
            _controller.index = index;
          });
        },
        controller: _pageController,
        children: List.generate(Page.length, (index) => Page[index]),
      ),
      extendBody: true,
      bottomNavigationBar: AnimatedNotchBottomBar(
        showShadow: true,
        removeMargins: true,
        notchBottomBarController: _controller,
        durationInMilliSeconds: 300,
        showLabel: true,
        itemLabelStyle: const TextStyle(
            color: Colors.black,
            fontSize: 12.0,
            fontFamily: 'Manrope',
            fontWeight: FontWeight.w500),
        notchColor: AppColor.black100,
        onTap: (index) {
          setState(() {
            _pageController.jumpToPage(index);
            currentPage = index;
          });
        },
        bottomBarItems: [
          //Home Screen
          BottomBarItem(
            inActiveItem: SvgPicture.asset(
              AppImages.homeUnselected,
            ),
            activeItem: SvgPicture.asset(
              AppImages.homeSelected,
            ),
            itemLabel: 'Home',
          ),
          //Category Screen
          BottomBarItem(
            inActiveItem: SvgPicture.asset(
              AppImages.categoryUnselected,
            ),
            activeItem: SvgPicture.asset(
              AppImages.categorySelected,
            ),
            itemLabel: 'Category',
          ),
          //Favorite Screen
          BottomBarItem(
            inActiveItem: SvgPicture.asset(
              AppImages.heartUnselected,
            ),
            activeItem: SvgPicture.asset(
              AppImages.heartUnselected,
              color: AppColor.amber,
            ),
            itemLabel: 'Favorite',
          ),
          //More Screen
          BottomBarItem(
            inActiveItem: SvgPicture.asset(
              AppImages.moreUnselected,
            ),
            activeItem: SvgPicture.asset(
              AppImages.moreUnselected,
              color: AppColor.amber,
            ),
            itemLabel: 'More',
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
