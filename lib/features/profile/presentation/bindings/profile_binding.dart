import 'package:get/get.dart';

import '../controllers/profile_controller.dart';
import '../states/profile_state.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
      () => ProfileController(
        state: ProfileState(),
      ),
    );
  }
}
