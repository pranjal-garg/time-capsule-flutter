import 'package:flutter/material.dart';
import 'package:time_capsule/core/constants/app_colors.dart';
import 'package:time_capsule/core/constants/app_sizes.dart';
import 'package:time_capsule/core/constants/app_text_styles.dart';

class RElevatedButtonTheme {
  RElevatedButtonTheme._();

  static ElevatedButtonThemeData lightElevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.brightBlue,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.r8),
        ),
        textStyle: AppTextStyles.buttonText,
        iconColor: AppColors.white,
        iconSize: AppSizes.v13,
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.w20,
          vertical: AppSizes.w12,
        )),
  );
}
