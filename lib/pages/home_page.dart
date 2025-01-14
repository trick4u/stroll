import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/navigation_controller.dart';
import '../services/colors.dart';
import '../services/scaling.dart';
import '../widgets/options_grid.dart';
import '../widgets/profile_image_box.dart';
import '../widgets/title_box.dart';

class HomePage extends GetView<NavigationController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ScaleUtil.init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
       body: Obx(() => controller.buildBody(context)),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}



class CustomBottomNavBar extends GetView<NavigationController> {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF0F1115),
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
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.credit_card),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_fire_department),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: '',
            ),
          ],
          selectedItemColor: Color(0xFF6B4EFF),
          unselectedItemColor: Colors.white54,
        ),
      ),
    );
  }
}

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pick your option.',
              style: TextStyle(
                color: Colors.white70,
                fontSize: ScaleUtil.fontSize(12),
                fontFamily: 'ProximaNova',
              ),
            ),
            Text(
              'See who has a similar mind.',
              style: TextStyle(
                color: Colors.white70,
                fontSize: ScaleUtil.fontSize(12),
                fontFamily: 'ProximaNova',
              ),
            ),
          ],
        ),
        Spacer(),
        Container(
          height: ScaleUtil.width(48),
          width: ScaleUtil.width(48),
          padding: EdgeInsets.all(ScaleUtil.width(12)),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(0.1),
            border: Border.all(
              color: const Color(0xFF6B4EFF),
              width: 2,
            ),
          ),
          child: Icon(
            Icons.mic,
            color: const Color(0xFF6B4EFF),
            size: ScaleUtil.scale(24),
          ),
        ),
        SizedBox(width: ScaleUtil.width(16)),
        Container(
          height: ScaleUtil.width(48),
          width: ScaleUtil.width(48),
          padding: EdgeInsets.all(ScaleUtil.width(12)),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xFF6B4EFF),
          ),
          child: Icon(
            Icons.arrow_forward,
            color: Colors.black,
            size: ScaleUtil.scale(24),
          ),
        ),
      ],
    );
  }
}
