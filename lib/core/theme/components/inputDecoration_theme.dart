import 'package:flutter/material.dart';
import 'package:time_capsule/core/constants/app_colors.dart';
import 'package:time_capsule/core/constants/app_sizes.dart';
import 'package:time_capsule/core/constants/app_text_styles.dart';

class RInputDecorationTheme {
  RInputDecorationTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(
      vertical: AppSizes.v7,
      horizontal: AppSizes.v12,
    ),
    prefixIconColor: AppColors.mediumGray,
    suffixIconColor: AppColors.mediumGray,
    fillColor: AppColors.softGray,
    filled: true,
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.r8),
        borderSide: BorderSide.none),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.r8),
        borderSide: BorderSide.none),
  );
}
