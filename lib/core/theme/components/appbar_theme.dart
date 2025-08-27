import 'package:flutter/material.dart';

import '../../../../core/constants/app_constants.dart';

class RAppBarTheme {
  RAppBarTheme._();

  static AppBarTheme lightAppBarTheme = AppBarTheme(
    backgroundColor: AppColors.lightGray,
    foregroundColor: AppColors.darkTeal,
    centerTitle: true,
    titleTextStyle: AppTextStyles.appBarTitle,
    elevation: 0,
    iconTheme: IconThemeData(size: AppSizes.v18),
    surfaceTintColor: Colors.transparent,
  );
}
