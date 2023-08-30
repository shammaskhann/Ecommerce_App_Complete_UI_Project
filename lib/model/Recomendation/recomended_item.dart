import 'package:ecommerce_app_ui_project/resources/AppInit.dart';

class RecomendedItems {
  List RecomenededItem = [
    AppInit.items.ItemList[0],
    AppInit.items.ItemList[2],
    AppInit.items.ItemList[4],
    AppInit.items.ItemList[6],
    AppInit.items.ItemList[8],
  ];
  addToRecomendation(Map map) {
    RecomenededItem.add(map);
  }
}
