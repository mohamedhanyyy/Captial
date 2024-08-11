import 'package:capital_school/capital_app.dart';
import 'package:capital_school/services/dio_helper/dio_helper.dart';
import 'package:capital_school/services/shared_preferences/preferences_helper.dart';
import 'package:capital_school/shared/functions/general_functions.dart';
import 'package:capital_school/shared/functions/restart_app.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  GeneralFunctions.setPreferredOrientation();

  PreferencesHelper.init().then((value) {
    runApp(
      EasyLocalization(
        supportedLocales: const [Locale('ar'), Locale('en'),],
        startLocale: Locale(PreferencesHelper.getLang),
        path: 'assets/translations',
        child: const RestartWidget(child: CapitalApp()),
      ),
    );
  });
}
