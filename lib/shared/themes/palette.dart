import 'package:flutter/material.dart';

import '../resources/colors.dart';

class Palette {
  static MaterialColor kToDark = MaterialColor(
    AppColors.primaryColor.value,
    <int, Color>{
      50: AppColors.primaryColor.withOpacity(0.1),
      100: AppColors.primaryColor.withOpacity(0.2),
      200: AppColors.primaryColor.withOpacity(0.3),
      300: AppColors.primaryColor.withOpacity(0.4),
      400: AppColors.primaryColor.withOpacity(0.5),
      500: AppColors.primaryColor.withOpacity(0.6),
      600: AppColors.primaryColor.withOpacity(0.7),
      700: AppColors.primaryColor.withOpacity(0.8),
      800: AppColors.primaryColor.withOpacity(0.9),
      900: AppColors.primaryColor,
    },
  );
}
