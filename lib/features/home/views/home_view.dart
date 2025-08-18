import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time_capsule/core/constants/app_strings.dart';
import 'package:time_capsule/core/constants/app_colors.dart';
import 'package:time_capsule/core/constants/app_icons.dart';
import 'package:time_capsule/core/constants/app_dimensions.dart';
import 'package:time_capsule/features/home/widgets/capsule_search_bar.dart';
import 'package:time_capsule/features/home/widgets/capsules_list.dart';
import 'package:time_capsule/features/home/widgets/create_capsule_button.dart';
import 'package:time_capsule/features/home/widgets/welcome_header.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(
        backgroundColor: AppColors.appBarBackground,
        elevation: 0,
        scrolledUnderElevation: 0,
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(AppIcons.notifications))
        ],
        title: const Text(AppStrings.homeTitle),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(
            left: AppDimensions.horizontalMargin,
            right: AppDimensions.horizontalMargin,
            top: AppDimensions.topMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WelcomeHeader(),
            SizedBox(
              height: AppDimensions.smallSpacing,
            ),
            CreateCapsuleButton(
              onPressed: () {},
            ),
            SizedBox(
              height: AppDimensions.smallSpacing,
            ),
            CapsuleSearchBar(
              onMicPressed: () {},
            ),
            SizedBox(
              height: AppDimensions.smallSpacing,
            ),
            const CapsulesList(),
          ],
        ),
      ),
    );
  }
}
