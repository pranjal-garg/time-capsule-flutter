import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/constants/app_constants.dart';

class CapsuleSearchBar extends StatelessWidget {
  const CapsuleSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppTextStyles.inputFieldText.copyWith(color: AppColors.black),
      cursorColor: AppColors.brightBlue,
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
    );
  }
}
