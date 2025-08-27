import 'package:get/get.dart';
import 'package:time_capsule/features/profile/states/profile_state.dart';

import '../controllers/profile_controller.dart';

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
