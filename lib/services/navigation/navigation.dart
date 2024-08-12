import 'package:flutter/material.dart';

class AppNavigation {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static void navigate({required BuildContext context, required Widget page}) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }

  static void navigateReplacement(
      {required BuildContext context, required Widget page}) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => page));
  }

  static void navigateOffAll(
      {required BuildContext context, required Widget page}) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => page),
        (Route<dynamic> route) => false);
  }
}
