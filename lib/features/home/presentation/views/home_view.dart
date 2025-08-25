import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:time_capsule/core/constants/app_sizes.dart';
import 'package:time_capsule/core/constants/app_text_styles.dart';

import '../controllers/home_controller.dart';
import '../widgets/Capsule.dart';

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
          top: AppSizes.h20,
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
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: Icon(FontAwesomeIcons.plus),
                  onPressed: () {},
                  label: Text("Create Time Capsule"),
                ),
              ),
              SizedBox(height: AppSizes.h20),
              SizedBox(
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      FontAwesomeIcons.magnifyingGlass,
                      size: AppSizes.v15,
                    ),
                    suffixIcon: Icon(
                      FontAwesomeIcons.microphone,
                      size: AppSizes.v15,
                    ),
                    hintText: "Search your capsules",
                  ),
                ),
              ),
              SizedBox(height: AppSizes.h20),
              Expanded(
                child: ListView.builder(
                  itemCount: controller.state.capsules.length,
                  itemBuilder: (context, index) {
                    return Capsule();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
