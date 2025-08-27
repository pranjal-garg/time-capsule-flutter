import 'package:get/get.dart';

import '../controllers/main_screen_controller.dart';
import '../states/main_screen_state.dart';

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
