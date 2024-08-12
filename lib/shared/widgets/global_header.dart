import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/colors.dart';
import 'back_button.dart';

class GlobalHeader extends StatelessWidget {
  const GlobalHeader({super.key, required this.text, this.hasBackButton, this.widget});

  final String text;

  final bool? hasBackButton;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 16.w, left: 16.w, top: 50.h),
      height: 118.h,
      width: ScreenUtil().screenWidth,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12.sp),
            bottomRight: Radius.circular(12.sp),
          ),
          boxShadow: [
            BoxShadow(
                color: AppColors.greyColor.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3)),
          ]),
      child: Row(
        children: [
          if (hasBackButton == true) ...[
            const CustomBackButton(),
            SizedBox(width: 16.w),
          ],
          Text(
            text.tr(),
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          if (widget != null) ...[const Spacer(), widget!]
        ],
      ),
    );
  }
}
