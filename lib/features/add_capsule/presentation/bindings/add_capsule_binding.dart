import 'package:get/get.dart';
import 'package:time_capsule/features/add_capsule/presentation/add_capsule_state.dart';

import '../controllers/add_capsule_controller.dart';

class AddCapsuleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddCapsuleController>(
      () => AddCapsuleController(
        state: AddCapsuleState(),
      ),
    );
  }
}
