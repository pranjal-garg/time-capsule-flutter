import 'package:get/get.dart';

import '../../features/add_capsule/presentation/bindings/add_capsule_binding.dart';
import '../../features/add_capsule/presentation/views/add_capsule_view.dart';
import '../../features/home/presentation/bindings/home_binding.dart';
import '../../features/home/presentation/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static var INITIAL = Routes.HOME;

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
  ];
}
