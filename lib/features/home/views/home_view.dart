import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time_capsule/core/constants/app_strings.dart';
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
      backgroundColor: Color(0xFFF0F0F0),
      appBar: AppBar(
        backgroundColor: Color(0xFFF0F0F0),
        elevation: 0,
        scrolledUnderElevation: 0,
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.notifications_active_outlined))
        ],
        title: const Text(AppStrings.homeTitle),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(
            left: Get.width * 0.05,
            right: Get.width * 0.05,
            top: Get.height * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WelcomeHeader(),
            SizedBox(
              height: Get.height * 0.02,
            ),
            CreateCapsuleButton(
              onPressed: () {},
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            CapsuleSearchBar(
              onMicPressed: () {},
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            const CapsulesList(),
          ],
        ),
      ),
    );
  }
}
