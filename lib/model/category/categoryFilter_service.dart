import '../../resources/AppInit.dart';

class CategoryFilterController {
  List filteredItem(String tag) {
    List filteredlist = [];
    for (int i = 0; i < AppInit.items.ItemList.length; i++) {
      for (var j = 0; j < AppInit.items.ItemList[i]['tags'].length; j++) {
        if (AppInit.items.ItemList[i]['tags'][j] == tag) {
          filteredlist.add(AppInit.items.ItemList[i]);
        }
      }
    }
    return filteredlist;
  }
}
