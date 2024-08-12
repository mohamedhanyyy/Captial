import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/colors.dart';

InputDecoration customInputDecoration({
  required String hintText,
  String? suffixIcon,
  String? prefixIcon,
  Color? hintColor,
  bool? enabled,
}) {
  return InputDecoration(
    hintText: hintText.tr(),
    hintStyle: TextStyle(
        color: hintColor ?? AppColors.borderColor,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400),
    enabled: enabled ?? true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: const BorderSide(color: AppColors.borderColor),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: const BorderSide(
        color: AppColors.borderColor,
        width: 1,
      ),
    ),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: const BorderSide(color: AppColors.borderColor)),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: const BorderSide(color: AppColors.borderColor)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: const BorderSide(color: AppColors.borderColor)),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
    ),
    fillColor: AppColors.whiteColor,
    filled: true,
     contentPadding:

     EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.h),
    suffixIcon: suffixIcon != null
        ? Padding(
            padding: EdgeInsets.only(left: 12.r, right: 12.r),
            child: SvgPicture.asset(suffixIcon),
          )
        : null,
    prefixIcon: prefixIcon != null
        ? Padding(
            padding: EdgeInsets.only(left: 12.r, right: 12.r),
            child: SvgPicture.asset(prefixIcon),
          )
        : null,
  );
}


