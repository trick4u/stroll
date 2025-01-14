import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:stroll/services/scaling.dart';

import '../controller/navigation_controller.dart';

class CustomBottomNavBar extends GetView<NavigationController> {
  const CustomBottomNavBar({super.key});

  Widget _buildIcon(Widget icon, int index) {
    final count = controller.getNotificationCount(index);

    return Stack(
      clipBehavior: Clip.none,
      children: [
        icon,
        if (count != null)
          Positioned(
            right: -8,
            top: -4,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              decoration: BoxDecoration(
                color: const Color(0xFF6B4EFF),
                borderRadius: BorderRadius.circular(10),
              ),
              constraints: const BoxConstraints(
                minWidth: 16,
                minHeight: 16,
              ),
              child: Text(
                count.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildSvgIcon(String assetName, {Color? color}) {
    return SvgPicture.asset(
      'assets/$assetName',
      height: ScaleUtil.height(28),
      width: ScaleUtil.width(28),
      colorFilter:
          color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF0F1115),
        border: Border(
          top: BorderSide(
            color: Colors.white.withOpacity(0.1),
            width: 0.5,
          ),
        ),
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: controller.selectedIndex,
          onTap: controller.changeIndex,
          items: [
            BottomNavigationBarItem(
              icon: _buildIcon(
                _buildSvgIcon(
                  'home.svg',
                  color: controller.selectedIndex == 0
                      ? const Color(0xFF6B4EFF)
                      : Colors.white54,
                ),
                0,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(
                _buildSvgIcon(
                  'fire.svg',
                  color: controller.selectedIndex == 1
                      ? const Color(0xFF6B4EFF)
                      : Colors.white54,
                ),
                1,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(
                _buildSvgIcon(
                  'chat.svg',
                  color: controller.selectedIndex == 2
                      ? const Color(0xFF6B4EFF)
                      : Colors.white54,
                ),
                2,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(
                  Icon(
                    Icons.person_outline,
                    size: ScaleUtil.scale(28),
                  ),
                  3),
              label: '',
            ),
          ],
          selectedItemColor: const Color(0xFF6B4EFF),
          unselectedItemColor: Colors.white54,
        ),
      ),
    );
  }
}
