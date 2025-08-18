import 'package:flutter/material.dart';
import 'package:time_capsule/core/constants/app_strings.dart';
import 'package:time_capsule/core/constants/app_colors.dart';
import 'package:time_capsule/core/constants/app_icons.dart';
import 'package:time_capsule/core/constants/app_text_styles.dart';
import 'package:time_capsule/core/constants/app_dimensions.dart';

class CreateCapsuleButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const CreateCapsuleButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: AppDimensions.buttonHeight,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        label: const Text(
          AppStrings.createTimeCapsule,
          style: AppTextStyles.buttonText,
        ),
        icon: const Icon(AppIcons.add),
        style: ElevatedButton.styleFrom(
          iconColor: AppColors.buttonIcon,
          backgroundColor: AppColors.primaryButton,
          foregroundColor: AppColors.buttonText,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.buttonBorderRadius),
          ),
        ),
      ),
    );
  }
}
