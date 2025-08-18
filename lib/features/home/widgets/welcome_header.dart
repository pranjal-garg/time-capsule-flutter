import 'package:flutter/material.dart';
import 'package:time_capsule/core/constants/app_text_styles.dart';

class WelcomeHeader extends StatelessWidget {
  final String userName;

  const WelcomeHeader({
    super.key,
    this.userName = 'Pranjal',
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome, $userName!',
      style: AppTextStyles.welcomeHeader,
    );
  }
}
