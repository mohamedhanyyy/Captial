import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../features/auth/data/models/error_model.dart';
import '../../shared/widgets/custom_snack_bar.dart';
import '../shared_preferences/preferences_helper.dart';

void errorHandler(Response? response) {
  if (response?.statusCode == 400) {
    ErrorModel errorModel = ErrorModel.fromJson(response?.data);

    CustomSnackBars.showErrorToast(title: errorModel.msg ?? 'badRequestError');
  } else if (response?.statusCode == 500) {
    CustomSnackBars.showErrorToast(title: 'serverError'.tr());
  } else if (response?.statusCode == 401) {
    PreferencesHelper.preferences?.remove('token');
    PreferencesHelper.preferences?.remove('keepMeLogged');
    // AwesomeDialog(context: AppNavigation.navigatorKey.currentContext!,
    // title: 'unAuthorizedError'.tr(),
    // desc: 'un authorized description'.tr(),
    // btnOkText: 'ok'.tr(),
    // btnCancelText: 'cancel'.tr(),
    // dialogType: DialogType.error,
    // btnOkColor: AppColors.primaryColor,
    // btnOkOnPress: (){
    //   // AppNavigation.navigateOffAll(context: AppNavigation.navigatorKey.currentContext!, page: LoginScreen());
    // }
    // ).show();
  } else if (response?.statusCode == 404) {
    CustomSnackBars.showErrorToast(title: 'notFoundError');
  }
}
