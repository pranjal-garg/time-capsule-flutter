import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/constants/app_constants.dart';

class CustomNotification extends StatelessWidget {
  final String title;
  final String subTitle;
  const CustomNotification({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.h65,
      margin: EdgeInsets.only(bottom: AppSizes.v20),
      child: Row(
        children: [
          _buildLeadingIcon(),
          SizedBox(
            width: AppSizes.w10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: AppTextStyles.buttonText,
              ),
              SizedBox(height: AppSizes.h3),
              Text(
                subTitle,
                style: AppTextStyles.searchFieldText
                    .copyWith(fontSize: AppSizes.sp12),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLeadingIcon() {
    return Container(
      height: double.infinity,
      width: AppSizes.w60,
      decoration: BoxDecoration(
        color: AppColors.softGray,
        borderRadius: BorderRadius.circular(AppSizes.r8),
      ),
      child: Icon(
        FontAwesomeIcons.clock,
        color: AppColors.darkTeal,
        weight: AppSizes.v10,
      ),
    );
  }
}
