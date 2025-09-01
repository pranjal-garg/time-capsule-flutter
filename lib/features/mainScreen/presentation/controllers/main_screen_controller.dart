import 'package:get/get.dart';
import 'package:time_capsule/features/add_capsule/presentation/bindings/add_capsule_binding.dart';
import 'package:time_capsule/features/profile/presentation/bindings/profile_binding.dart';

import '../../../home/presentation/bindings/home_binding.dart';
import '../states/main_screen_state.dart';

class MainScreenController extends GetxController {
  MainScreenState state;

  MainScreenController({required this.state});

  void changeIndex(int index) {
    state.currentIndex.value = index;
    initializeBindings(index);
  }

  void initializeBindings(int tabIndex) {
    if (!state.initializedTabs.contains(tabIndex)) {
      switch (tabIndex) {
        case 0:
          HomeBinding().dependencies();
          break;
        case 1:
          AddCapsuleBinding().dependencies();
          break;
        case 2:
          ProfileBinding().dependencies();
          break;
      }
      state.initializedTabs.add(tabIndex);
    }
  }

  bool isTabInitialized(int tabIndex) {
    return state.initializedTabs.contains(tabIndex);
  }

  void reinitializeTab(int tabIndex) {
    state.initializedTabs.remove(tabIndex);
    initializeBindings(tabIndex);
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
