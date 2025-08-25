import 'package:flutter/material.dart';
import 'package:time_capsule/core/constants/app_colors.dart';

import '../../../../core/constants/app_sizes.dart';

class Capsule extends StatelessWidget {
  const Capsule({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: AppSizes.h20),
      padding: EdgeInsets.symmetric(vertical: AppSizes.h20, horizontal: AppSizes.w10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.r8),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: AppSizes.w40,
            backgroundColor: Colors.blueGrey,
          )
        ],
      ),
    );
  }
}
