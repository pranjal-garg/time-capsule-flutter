import 'package:get/get.dart';

import '../states/main_screen_state.dart';

class MainScreenController extends GetxController {
  MainScreenState state;
  MainScreenController({required this.state});

  void onTap(int index)
  {
    state.currentIndex.value = index;
  }

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
}
