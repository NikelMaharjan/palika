import 'package:palikaa/export_pages.dart';


class ToastShow{

  static toastAlert({required String message, required bool isSuccess}) {
      Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: isSuccess ? primaryColor : Colors.pinkAccent,
      textColor: whiteColor,
      fontSize: 15.sp,
    );
  }

}

