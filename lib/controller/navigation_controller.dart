import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/main_page.dart';

class NavigationController extends GetxController {
  final _selectedIndex = 0.obs;

  int get selectedIndex => _selectedIndex.value;

  //made up function to simulate notification count
  final RxMap<int, int> _notificationCounts = <int, int>{
    1: 0,
    2: 10,
  }.obs;

  int? getNotificationCount(int index) => _notificationCounts[index];

  void changeIndex(int index) {
    _selectedIndex.value = index;
    // Clear notification count when tab is selected
    if (_notificationCounts.containsKey(index)) {
      _notificationCounts.remove(index);
    }
  }

  void updateNotificationCount(int tabIndex, int count) {
    if (count >= 0) {
      _notificationCounts[tabIndex] = count;
    } else {
      _notificationCounts.remove(tabIndex);
    }
  }

  Widget buildBody(BuildContext context) {
    switch (selectedIndex) {
      case 0:
        return HomeScreen();
      case 1:
        return const Center(
            child: Text('Trending', style: TextStyle(color: Colors.white)));
      case 2:
        return const Center(
            child: Text('Chat', style: TextStyle(color: Colors.white)));
      case 3:
        return const Center(
            child: Text('Profile', style: TextStyle(color: Colors.white)));
      default:
        return HomeScreen();
    }
  }
}
