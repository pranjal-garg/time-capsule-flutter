import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time_capsule/core/constants/app_constants.dart';

class CustomFormField extends StatelessWidget {

  final String labelText;
  final String hintText;
  const CustomFormField({super.key, required this.labelText, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: AppSizes.h20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: AppTextStyles.buttonText,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: AppTextStyles.inputFieldText,

            ),
          )
        ],
      ),
    );
  }
}
