import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time_capsule/core/constants/app_strings.dart';

class CapsuleSearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final VoidCallback? onMicPressed;

  const CapsuleSearchBar({
    super.key,
    this.controller,
    this.onChanged,
    this.onMicPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.05,
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: onMicPressed,
            icon: const Icon(Icons.mic_outlined),
          ),
          fillColor: Colors.grey.shade300,
          filled: true,
          hintText: AppStrings.searchHint,
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(14),
          ),
          contentPadding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
