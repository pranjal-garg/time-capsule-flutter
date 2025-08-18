import 'package:get/get.dart';

class AppDimensions {
  // Responsive dimensions using Get
  static double get screenWidth => Get.width;
  static double get screenHeight => Get.height;
  
  // Margins and Padding
  static double get horizontalMargin => screenWidth * 0.05;
  static double get topMargin => screenHeight * 0.02;
  static double get bottomMargin => screenHeight * 0.01;
  
  // Widget Heights
  static double get buttonHeight => screenHeight * 0.05;
  static double get searchBarHeight => screenHeight * 0.05;
  
  // Avatar and Icon Sizes
  static double get avatarRadius => screenWidth * 0.1;
  static double get iconSize => 20.0;
  
  // Spacing
  static double get smallSpacing => screenHeight * 0.02;
  static double get mediumSpacing => screenWidth * 0.04;
  static double get largeSpacing => screenWidth * 0.08;
  
  // Border Radius
  static double get buttonBorderRadius => 12.0;
  static double get searchBorderRadius => 14.0;
  static double get cardBorderRadius => 15.0;
}