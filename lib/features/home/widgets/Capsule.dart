import 'package:flutter/material.dart';
import 'package:time_capsule/core/constants/app_colors.dart';
import 'package:time_capsule/core/constants/app_dimensions.dart';
import 'package:time_capsule/core/constants/app_icons.dart';
import 'package:time_capsule/core/constants/app_images.dart';
import 'package:time_capsule/core/constants/app_text_styles.dart';

class Capsule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: AppDimensions.bottomMargin),
      padding: EdgeInsets.symmetric(
          horizontal: AppDimensions.mediumSpacing,
          vertical: AppDimensions.smallSpacing),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(AppDimensions.cardBorderRadius),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border.all(
          color: AppColors.borderColor,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: AppDimensions.avatarRadius,
            backgroundImage: AssetImage(AppImages.randomImage),
          ),
          SizedBox(
            width: AppDimensions.mediumSpacing,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Family Memories",
                style: AppTextStyles.capsuleTitle,
              ),
              Text(
                "Unlocks on 2025-12--25",
                style: AppTextStyles.capsuleSubtitle,
              )
            ],
          ),
          SizedBox(
            width: AppDimensions.largeSpacing,
          ),
          SizedBox(
            child: Column(
              children: [
                IconButton(
                  icon: Icon(AppIcons.lock),
                  iconSize: AppDimensions.iconSize,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(AppIcons.share),
                  iconSize: AppDimensions.iconSize,
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
