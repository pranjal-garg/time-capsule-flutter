import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time_capsule/core/constants/app_strings.dart';

class CreateCapsuleButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const CreateCapsuleButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: Get.height * 0.05,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        label: const Text(
          AppStrings.createTimeCapsule,
          style: TextStyle(fontSize: 18),
        ),
        icon: const Icon(Icons.add),
        style: ElevatedButton.styleFrom(
          iconColor: Colors.white,
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
