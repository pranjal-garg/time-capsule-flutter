import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:time_capsule/features/notifications/presentation/widgets/customNotification.dart';

import '../../../../core/constants/app_constants.dart';
import '../controllers/notifications_controller.dart';

class NotificationsView extends GetView<NotificationsController> {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.arrowLeft),
        ),
        title: const Text('Notifications'),
      ),
      body: Container(
        margin: EdgeInsets.only(
          left: AppSizes.w20,
          right: AppSizes.w20,
          top: AppSizes.h10,
        ),
        child: ListView.builder(
            itemCount: controller.state.title.length,
            itemBuilder: (context, index) => CustomNotification(
                  title: controller.state.title[index],
                  subTitle: controller.state.subTitle[index],
                )),
      ),
    );
  }
}
