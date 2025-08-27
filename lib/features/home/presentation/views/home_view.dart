import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time_capsule/features/home/presentation/widgets/capsule_search_bar.dart';
import 'package:time_capsule/features/home/presentation/widgets/create_capsule_button.dart';

import '../../../../core/constants/app_constants.dart';
import '../controllers/home_controller.dart';
import '../../../../core/widgets/common/capsule.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        margin: EdgeInsets.only(
          left: AppSizes.w20,
          right: AppSizes.w20,
          top: AppSizes.h10,
        ),
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                controller.state.name.value,
                style: AppTextStyles.welcomeTitle,
              ),
              SizedBox(height: AppSizes.h20),
              CreateCapsuleButton(),
              SizedBox(height: AppSizes.h20),
              CapsuleSearchBar(),
              SizedBox(height: AppSizes.h20),
              Expanded(
                child: ListView.builder(
                    itemCount: controller.state.capsules.length,
                    itemBuilder: (context, index) => Capsule(
                          title: controller.state.capsules[index],
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
