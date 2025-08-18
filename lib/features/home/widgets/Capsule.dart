import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Capsule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: Get.height * 0.01),
      padding: EdgeInsets.symmetric(
          horizontal: Get.width * 0.03, vertical: Get.height * 0.02),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border.all(
          color: Colors.grey.shade200,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: Get.width * 0.1,
            backgroundImage: AssetImage("assets/images/random.png"),
          ),
          SizedBox(
            width: Get.width * 0.04,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Family Memories",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              Text(
                "Unlocks on 2025-12--25",
                style: TextStyle(fontWeight: FontWeight.w400),
              )
            ],
          ),
          SizedBox(
            width: Get.width * 0.1,
          ),
          SizedBox(
            child: Column(
              children: [
                IconButton(
                  icon: Icon(Icons.lock_outline),
                  iconSize: 20,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.share_rounded),
                  iconSize: 20,
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
