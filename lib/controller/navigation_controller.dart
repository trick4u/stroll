

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/home_page.dart';
import '../pages/main_page.dart';

class NavigationController extends GetxController {
  final _selectedIndex = 0.obs;
  
  int get selectedIndex => _selectedIndex.value;
  
  void changeIndex(int index) {
    _selectedIndex.value = index;
  }

    Widget buildBody(BuildContext context) {
    switch (selectedIndex) {
      case 0:
        return HomeScreen();
      case 1:
        return const Center(child: Text('Trending', style: TextStyle(color: Colors.white)));
      case 2:
        return const Center(child: Text('Chat', style: TextStyle(color: Colors.white)));
      case 3:
        return const Center(child: Text('Profile', style: TextStyle(color: Colors.white)));
      default:
        return HomeScreen();
    }
  }
}