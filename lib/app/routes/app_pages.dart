import 'package:get/get.dart';

import '../../features/add_capsule/presentation/bindings/add_capsule_binding.dart';
import '../../features/add_capsule/presentation/views/add_capsule_view.dart';
import '../../features/home/presentation/bindings/home_binding.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/notifications/presentation/bindings/notifications_binding.dart';
import '../../features/notifications/presentation/views/notifications_view.dart';
import '../../features/profile/bindings/profile_binding.dart';
import '../../features/profile/views/profile_view.dart';
import '../../features/mainScreen/bindings/main_screen_binding.dart';
import '../../features/mainScreen/views/main_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static var INITIAL = Routes.MAIN_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ADD_CAPSULE,
      page: () => const AddCapsuleView(),
      binding: AddCapsuleBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATIONS,
      page: () => const NotificationsView(),
      binding: NotificationsBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.MAIN_SCREEN,
      page: () => const MainScreenView(),
      binding: MainScreenBinding(),
    ),
  ];
}
