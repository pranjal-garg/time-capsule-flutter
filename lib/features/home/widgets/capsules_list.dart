import 'package:flutter/material.dart';
import 'package:time_capsule/features/home/widgets/Capsule.dart';

class CapsulesList extends StatelessWidget {
  final int itemCount;
  final Widget Function(BuildContext, int)? itemBuilder;

  const CapsulesList({
    super.key,
    this.itemCount = 15,
    this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: itemCount,
        itemBuilder: itemBuilder ?? (context, index) => Capsule(),
      ),
    );
  }
}
