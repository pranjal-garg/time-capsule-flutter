import 'package:get/get.dart';
import 'package:time_capsule/features/notifications/presentation/states/notifications_state.dart';

class NotificationsController extends GetxController {
  final NotificationsState state;

  NotificationsController({required this.state});

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
