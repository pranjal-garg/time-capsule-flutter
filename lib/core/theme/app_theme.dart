import 'package:flutter/material.dart';
import 'package:time_capsule/core/constants/app_colors.dart';
import 'package:time_capsule/core/theme/components/appbar_theme.dart';
import 'package:time_capsule/core/theme/components/elevatedButton_theme.dart';
import 'package:time_capsule/core/theme/components/inputDecoration_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.lightGray,
    appBarTheme: RAppBarTheme.lightAppBarTheme,
    elevatedButtonTheme: RElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: RInputDecorationTheme.lightInputDecorationTheme,
  );
}
