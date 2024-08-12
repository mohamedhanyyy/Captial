import 'package:capital_school/shared/themes/palette.dart';
import 'package:flutter/material.dart';

import '../resources/colors.dart';

class AppThemes {
  static ThemeData whiteTheme = ThemeData(
    dividerTheme: const DividerThemeData(color: Colors.transparent),
    fontFamily: 'Cairo',
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.white,
    cardColor: AppColors.whiteColor,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: AppColors.primaryColor),
    hoverColor: Colors.transparent,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Palette.kToDark,
    ).copyWith(surface: AppColors.whiteColor),
  );
}
