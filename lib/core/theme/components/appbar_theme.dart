import 'package:flutter/material.dart';
import 'package:time_capsule/core/constants/app_colors.dart';
import 'package:time_capsule/core/constants/app_text_styles.dart';

class RAppBarTheme {
  RAppBarTheme._();

  static AppBarTheme lightAppBarTheme = AppBarTheme(
    backgroundColor: AppColors.lightGray,
    foregroundColor: AppColors.darkTeal,
    centerTitle: true,
    titleTextStyle: AppTextStyles.appBarTitle,
    elevation: 0,
    surfaceTintColor: Colors.transparent,
  );
}
