import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../resources/colors.dart';

class CustomSnackBars {
   // static final double fontSize = 14.sp;
  // static final FontWeight fontWeight = FontWeight.w400;


  static void showSuccessToast({required String title, Toast? length}) {
    Fluttertoast.showToast(
        msg: title.tr(),
        toastLength: length ?? Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: AppColors.greenColor,
        textColor: AppColors.whiteColor,
        fontSize: 16.0);
  }

  static void showErrorToast({required String title, Toast? length}) {
    Fluttertoast.showToast(
        msg: title.tr(),
        toastLength: length ?? Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: AppColors.redColor,
        textColor: AppColors.whiteColor,
        fontSize: 16.sp,
    );
  }
}
