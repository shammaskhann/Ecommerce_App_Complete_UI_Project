import 'package:ecommerce_app_ui_project/Utils/util_toast.dart';

class FavController {
  List favItems = [];
  addToFav(Map item) {
    favItems.add(item);
    UtilToast().showToast('Item Successfully Added To Favourite');
  }

  removeFromFav(String name) {
    favItems.removeWhere((element) => element['name'] == name);
    UtilToast().showToast('Item Successfully Removed From Favourite');
  }

  bool isFav(String name) {
    bool isFav = false;
    favItems.forEach((element) {
      if (element['name'] == name) {
        isFav = true;
      }
    });
    return isFav;
  }
}
