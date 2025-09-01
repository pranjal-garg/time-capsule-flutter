import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time_capsule/features/add_capsule/presentation/views/add_capsule_view.dart';
import 'package:time_capsule/features/home/presentation/views/home_view.dart';
import 'package:time_capsule/features/profile/presentation/views/profile_view.dart';

import '../controllers/main_screen_controller.dart';

class MainScreenView extends GetView<MainScreenController> {
  const MainScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: controller.state.currentIndex.value,
            children: [
              TabWrapper(tabIndex: 0, child: HomeView()),
              TabWrapper(tabIndex: 1, child: AddCapsuleView()),
              TabWrapper(tabIndex: 2, child: ProfileView()),
            ],
          )),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: controller.state.items,
            currentIndex: controller.state.currentIndex.value,
            onTap: controller.changeIndex,
          )),
    );
  }
}

class TabWrapper extends StatelessWidget {
  final int tabIndex;
  final Widget child;

  const TabWrapper({
    super.key,
    required this.tabIndex,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainScreenController>(
      builder: (controller) {
        // Ensure bindings are initialized for this tab
        if (!controller.isTabInitialized(tabIndex)) {
          controller.initializeBindings(tabIndex);
        }

        return child;
      },
    );
  }
}
