import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreenState extends GetXState {
  List<Widget> pages = [];
  RxInt currentIndex = 0.obs;
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.add_box), label: "Create"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
  ];
  final Set<int> initializedTabs = <int>{};
}
