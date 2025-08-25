import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomFormField extends StatelessWidget {

  final String labelText;
  final String hintText;
  const CustomFormField({super.key, required this.labelText, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: Get.height * 0.05,
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: TextStyle(
              fontSize: Get.width * 0.05,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.left,
          ),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: Get.width * 0.03,
              ),
              hintText: hintText,
              filled: true,
              fillColor: Color(0xFFEBEDED),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          )
        ],
      ),
    );
  }
}
