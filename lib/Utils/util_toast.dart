import 'package:ecommerce_app_ui_project/resources/AppColor.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UtilToast {
  void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      backgroundColor: AppColor.white,
      textColor: AppColor.black100,
      fontSize: 16.0,
    );
  }
}
