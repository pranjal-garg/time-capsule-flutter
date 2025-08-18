import 'package:flutter/material.dart';

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
      style: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
