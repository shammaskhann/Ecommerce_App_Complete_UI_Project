import 'package:ecommerce_app_ui_project/model/Recomendation/recomended_item.dart';
import 'package:ecommerce_app_ui_project/model/User/cart_services.dart';
import '../model/Items/items_sevices.dart';
import '../model/User/fav_service.dart';
import '../model/User/user_controller.dart';
import '../model/category/categoryFilter_service.dart';
import '../model/category/category_services.dart';

class AppInit {
  static CartController cartController = CartController();
  static FavController favController = FavController();
  static User user = User();
  static Items items = Items();
  static RecomendedItems recomendedItems = RecomendedItems();
  static CategoryController categoryController = CategoryController();
  static CategoryFilterController categoryFilterController =
      CategoryFilterController();
}
