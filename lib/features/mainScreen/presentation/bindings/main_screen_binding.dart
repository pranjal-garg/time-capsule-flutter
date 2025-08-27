import 'package:get/get.dart';
import 'package:time_capsule/features/mainScreen/states/main_screen_state.dart';

import '../controllers/main_screen_controller.dart';

class MainScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainScreenController>(
      () => MainScreenController(
        state: MainScreenState(),
      ),
    );
  }
}
