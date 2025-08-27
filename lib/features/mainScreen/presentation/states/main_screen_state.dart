import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../home/presentation/views/home_view.dart';
import '../../add_capsule/presentation/views/add_capsule_view.dart';
import '../../profile/views/profile_view.dart';

class MainScreenState extends GetXState {
  List<Widget> pages = [
    const HomeView(),
    const AddCapsuleView(),
    const ProfileView(),
  ];
  RxInt currentIndex = 0.obs;
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home"
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.add_box),
        label: "Create"
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: "Profile"
    ),

  ];
}
