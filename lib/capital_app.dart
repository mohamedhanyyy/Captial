import 'package:capital_school/services/navigation/navigation.dart';
import 'package:capital_school/services/shared_preferences/preferences_helper.dart';
import 'package:capital_school/shared/functions/general_functions.dart';
import 'package:capital_school/shared/themes/app_theme.dart';
import 'package:easy_localization/easy_localization.dart';
 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CapitalApp extends StatelessWidget {
  const CapitalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(320, 568),
      useInheritedMediaQuery: true,
      builder: (BuildContext context, Widget? _) {
        return GestureDetector(
          onTap: GeneralFunctions.hideKeyboard,
          child: MaterialApp(
            navigatorKey: AppNavigation.navigatorKey,
            theme: AppThemes.whiteTheme,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            home: PreferencesHelper.applicationFirstPage,
          )
        );
      },
    );
  }
}
