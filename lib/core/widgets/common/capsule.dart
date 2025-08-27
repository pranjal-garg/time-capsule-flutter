import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/app_constants.dart';

class Capsule extends StatelessWidget {
  final String title;

  const Capsule({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: AppSizes.h20),
      padding: EdgeInsets.only(
          left: AppSizes.w20,
          top: AppSizes.h10,
          bottom: AppSizes.h10,
          right: AppSizes.w20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.r8),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: AppSizes.w40,
            backgroundColor: AppColors.brightBlue,
          ),
          SizedBox(width: AppSizes.w15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: AppTextStyles.buttonText.copyWith(
                    color: AppColors.darkTeal,
                  ),
                ),
                Text(
                  "Unlocks on 2025-12-25",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: AppTextStyles.searchFieldText
                      .copyWith(fontSize: AppSizes.sp12),
                ),
              ],
            ),
          ),
          Column(
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(
                  FontAwesomeIcons.lock,
                  size: AppSizes.v18,
                  color: AppColors.brightBlue,
                ),
                onPressed: () {},
              ),
              IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(
                  FontAwesomeIcons.share,
                  size: AppSizes.v18,
                  color: AppColors.brightBlue,
                ),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
