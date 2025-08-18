import 'package:flutter/material.dart';
import 'package:time_capsule/core/constants/app_strings.dart';
import 'package:time_capsule/core/constants/app_colors.dart';
import 'package:time_capsule/core/constants/app_icons.dart';
import 'package:time_capsule/core/constants/app_dimensions.dart';

class CapsuleSearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final VoidCallback? onMicPressed;

  const CapsuleSearchBar({
    super.key,
    this.controller,
    this.onChanged,
    this.onMicPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.searchBarHeight,
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: onMicPressed,
            icon: const Icon(AppIcons.mic),
          ),
          fillColor: AppColors.searchBarFill,
          filled: true,
          hintText: AppStrings.searchHint,
          prefixIcon: const Icon(AppIcons.search),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(AppDimensions.searchBorderRadius),
          ),
          contentPadding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
