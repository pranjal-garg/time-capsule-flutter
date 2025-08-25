import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateCapsuleButton extends StatelessWidget {
  const CreateCapsuleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        icon: Icon(FontAwesomeIcons.plus),
        onPressed: () {},
        label: Text("Create Time Capsule"),
      ),
    );
  }
}
