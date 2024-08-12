import 'package:capital_school/shared/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/colors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.whiteColor,
        border: Border.all(
          color: AppColors.greyColor,
        ),
        boxShadow: const [
          BoxShadow(color: AppColors.greyColor, blurRadius: 6),
        ],
      ),
      child: InkWell(
        onTap: () {
           Navigator.of(context).pop();
        },
        child: Center(
          child: Transform.rotate(
            angle: context.isCurrentEnglish ? 135 : 0,
            child: SvgPicture.asset('assets/icons/arrow.svg'),
          ),
        ),
      ),
    );
  }
}
