import 'package:get/get.dart';

import '../controllers/add_capsule_controller.dart';

class AddCapsuleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddCapsuleController>(
      () => AddCapsuleController(),
    );
  }
}
