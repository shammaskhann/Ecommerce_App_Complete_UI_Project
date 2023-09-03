import 'package:ecommerce_app_ui_project/resources/AppImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../resources/AppInit.dart';

class FavICon extends StatefulWidget {
  final Map ItemMap;
  final Function(bool) isUpdated;
  const FavICon({required this.ItemMap, required this.isUpdated, super.key});

  @override
  State<FavICon> createState() => _FavIConState();
}

class _FavIConState extends State<FavICon> {
  bool isSelected = false;
  @override
  initState() {
    super.initState();
    isSelected = AppInit.favController.isFav(widget.ItemMap['name']);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          if (isSelected == false) {
            AppInit.favController.addToFav(widget.ItemMap);
          } else {
            AppInit.favController.removeFromFav(widget.ItemMap['name']);
          }
          widget.isUpdated(true);
          setState(() {
            isSelected = !isSelected;
          });
        },
        icon: SvgPicture.asset(
          AppImages.heartUnselected,
          height: 24,
          width: 24,
          color: (isSelected == true) ? Colors.red : Colors.black,
        ));
  }
}
