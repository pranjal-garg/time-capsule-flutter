import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time_capsule/features/add_capsule/presentation/widgets/FormField.dart';

import '../controllers/add_capsule_controller.dart';

class AddCapsuleView extends GetView<AddCapsuleController> {
  const AddCapsuleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 248, 249, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(246, 248, 249, 1.0),
        title: Text(
          'Time Capsule',
          style: TextStyle(
            fontSize: Get.width * 0.05,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_outlined))
        ],
        centerTitle: true,
      ),
      body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: Get.width * 0.05,
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(Get.width * 0.03),
                child: Image.asset(
                  "assets/images/addCapsule.png",
                  width: double.infinity,
                ),
              ),
              SizedBox(height: Get.height * 0.03),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Create your own capsule",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: Get.width * 0.06,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                            "A time capsule is a unique way to preserve your thoughts, feelings, and memories for the future. Whether it's a message to your future self, a collection of photos, or a video diary, you can store..."),
                      ),
                      SizedBox(height: Get.height*0.02,),
                      CustomFormField(
                        labelText: "Titile",
                        hintText: "My First Capsule",
                      ),
                      CustomFormField(
                        labelText: "Titile",
                        hintText: "My First Capsule",
                      ),
                      CustomFormField(
                        labelText: "Titile",
                        hintText: "My First Capsule",
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
