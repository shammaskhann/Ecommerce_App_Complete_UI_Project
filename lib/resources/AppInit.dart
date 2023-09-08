import 'package:ecommerce_app_ui_project/model/Recomendation/recomended_item.dart';
import 'package:ecommerce_app_ui_project/model/User/Cart/cart_services.dart';
import 'package:ecommerce_app_ui_project/model/User/PaymentDetal/card_detail_controller.dart';
import '../model/Items/items_sevices.dart';
import '../model/Orders/order_controller.dart';
import '../model/User/Location/location_controller.dart';
import '../model/User/Favourite/fav_service.dart';
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
  static LocationController locationController = LocationController();
  static OrderController orderController = OrderController();
  static CardDetailController cardDetailController = CardDetailController();
}
