import 'dart:convert';

import 'package:ecommerce_app_ui_project/Utils/util_toast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavController {
  List favItems = [];
  addToFav(Map item) {
    favItems.add(item);
    UtilToast().showToast('Item Successfully Added To Favourite');
    setFavLocalStorage();
  }

  removeFromFav(String name) {
    favItems.removeWhere((element) => element['name'] == name);
    UtilToast().showToast('Item Successfully Removed From Favourite');
    setFavLocalStorage();
  }

  bool isFav(String name) {
    bool isFav = false;
    for (var element in favItems) {
      if (element['name'] == name) {
        isFav = true;
      }
    }
    return isFav;
  }

  setFavLocalStorage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String encodedFavItems = json.encode(favItems);
    prefs.setString('favItems', encodedFavItems);
  }

  fetchFavLocalStorage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? encodedFavItems = prefs.getString('favItems');
    if (encodedFavItems != null) {
      List decodedFavItems = json.decode(encodedFavItems);
      favItems = decodedFavItems;
    }
  }
}
