import 'package:get/get.dart';
import 'package:time_capsule/features/home/presentation/states/home_state.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(
        state: HomeState(),
      ),
    );
  }
}
