import 'package:get/get.dart';

import '../states/profile_state.dart';

class ProfileController extends GetxController {
  final ProfileState state;

  ProfileController({required this.state});

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
