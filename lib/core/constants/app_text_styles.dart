import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:time_capsule/core/constants/app_colors.dart';

import 'app_sizes.dart';

class AppTextStyles {
  AppTextStyles._();

  // Header Text Styles
  static const TextStyle welcomeHeader = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );

  // Capsule Text Styles
  static const TextStyle capsuleTitle = TextStyle(
    fontWeight: FontWeight.w500,
  );

  static const TextStyle capsuleSubtitle = TextStyle(
    fontWeight: FontWeight.w400,
  );

  static TextStyle appBarTitle = GoogleFonts.inter(
      fontWeight: FontWeight.w700,
      fontSize: AppSizes.sp18,
      color: AppColors.darkTeal);

  static TextStyle welcomeTitle = GoogleFonts.inter(
    fontWeight: FontWeight.w700,
    fontSize: AppSizes.sp22,
  );

  static TextStyle buttonText = GoogleFonts.inter(
    fontWeight: FontWeight.w500,
    fontSize: AppSizes.sp16,
  );

  static TextStyle inputFieldText = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: AppSizes.sp14,
    color: AppColors.mediumGray
  );
}
