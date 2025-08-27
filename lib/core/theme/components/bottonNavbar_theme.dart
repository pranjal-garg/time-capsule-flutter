import 'package:flutter/material.dart';

import '../../../../core/constants/app_constants.dart';

class RBottomNavbarTheme {
  RBottomNavbarTheme._();

  static BottomNavigationBarThemeData lightBottomNavigationBarTheme =
      BottomNavigationBarThemeData(
    backgroundColor: AppColors.lightGray,
    selectedItemColor: AppColors.brightBlue,
    unselectedItemColor: AppColors.mediumGray,
    elevation: 0,
    selectedLabelStyle: AppTextStyles.searchFieldText.copyWith(
      fontSize: AppSizes.sp10,
    ),
    unselectedLabelStyle: AppTextStyles.searchFieldText.copyWith(
      fontSize: AppSizes.sp10,
    ),
  );
}
