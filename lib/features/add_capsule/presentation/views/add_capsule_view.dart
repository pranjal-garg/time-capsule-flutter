import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time_capsule/features/add_capsule/presentation/widgets/customFormField.dart';

import '../../../../core/constants/app_constants.dart';
import '../controllers/add_capsule_controller.dart';

class AddCapsuleView extends GetView<AddCapsuleController> {
  const AddCapsuleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Time Capsule",
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          margin: EdgeInsets.only(
            left: AppSizes.w20,
            right: AppSizes.w20,
            top: AppSizes.h10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(AppSizes.r4),
                child: Image.asset(AppImages.addScreen),
              ),
              SizedBox(height: AppSizes.h40),
              Text(
                "Create Your Time Capsule",
                style: AppTextStyles.welcomeTitle,
              ),
              Text(
                "A time capsule is a unique way to preserve your thoughts, feelings, and memories for the future. Whether it's a message to your future self, a collection of photos, or a video diary, you can store it securely and set a date to unlock it. Imagine the joy and nostalgia of opening your time capsule years later and reliving those precious moments.",
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style:
                    AppTextStyles.buttonText.copyWith(fontSize: AppSizes.sp14),
              ),
              SizedBox(height: AppSizes.h20),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.state.label.length,
                itemBuilder: (context, index) => CustomFormField(
                  labelText: controller.state.label[index],
                  hintText: controller.state.hint[index],
                ),
              ),
              SizedBox(height: AppSizes.h10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Create Capsule"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
