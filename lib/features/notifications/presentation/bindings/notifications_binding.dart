import 'package:get/get.dart';
import 'package:time_capsule/features/notifications/presentation/states/notifications_state.dart';

import '../controllers/notifications_controller.dart';

class NotificationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationsController>(
      () => NotificationsController(
        state: NotificationsState(),
      ),
    );
  }
}
