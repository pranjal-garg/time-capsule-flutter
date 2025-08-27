import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/widgets/common/capsule.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Capsule'),
      ),
      body: Container(
        margin: EdgeInsets.only(
          left: AppSizes.w20,
          right: AppSizes.w20,
          top: AppSizes.h10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildProfile(),
            SizedBox(height: AppSizes.h20),
            Text(
              "Emily is a passionate music lover and a professional DJ. She has been in the music industry for over a decade, performing at various international events and festivals. Emily loves to share her music journey and connect with her fans through her social media platforms.",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.poppinsSubTitle
                  .copyWith(color: AppColors.darkTeal),
            ),
            SizedBox(height: AppSizes.h50),
            Text(
              "About Me",
              style: AppTextStyles.poppinsLargeTitle,
            ),
            SizedBox(height: AppSizes.h10),
            Text(
              "Emily Johnson, also known as DJ Emily, has been a prominent figure in the music industry for over 10 years. She started her career in London and quickly gained popularity for her unique style and energetic performances. Emily has performed at numerous international events, including Tomorrowland and Ultra Music Festival. She is also a music producer and has released several hit tracks that have topped the charts.",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.aboutText,
            ),
            SizedBox(height: AppSizes.h50),
            Text(
              "Recent Activities",
              style: AppTextStyles.poppinsLargeTitle,
            ),
            SizedBox(height: AppSizes.h20),
            Expanded(
                child: ListView.builder(
                  itemCount: controller.state.capsules.length,
                    itemBuilder: (context, index) => Capsule(
                          title: controller.state.capsules[index],
                        )))
          ],
        ),
      ),
    );
  }

  Widget _buildProfile() {
    return IntrinsicHeight(
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.brightBlue,
            radius: AppSizes.w50,
          ),
          SizedBox(width: AppSizes.w20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // or spaceAround
              children: [
                Text("Emily Johnson", style: AppTextStyles.poppinsLargeTitle),
                Text("2,000,000 monthly listeners",
                    style: AppTextStyles.poppinsSubTitle),
                Text("@emilyj", style: AppTextStyles.poppinsSubTitle)
              ],
            ),
          )
        ],
      ),
    );
  }
}
