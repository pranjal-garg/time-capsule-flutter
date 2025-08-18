import 'package:flutter/material.dart';
import 'package:time_capsule/core/constants/app_colors.dart';

class AppTextStyles {
  // Header Text Styles
  static const TextStyle welcomeHeader = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w700,
    color: AppColors.welcomeTextColor,
  );
  
  // Button Text Styles
  static const TextStyle buttonText = TextStyle(
    fontSize: 18,
  );
  
  // Capsule Text Styles
  static const TextStyle capsuleTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  
  static const TextStyle capsuleSubtitle = TextStyle(
    fontWeight: FontWeight.w400,
  );
}