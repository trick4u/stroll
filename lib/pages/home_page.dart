import 'package:flutter/material.dart';

import '../services/colors.dart';
import '../services/scaling.dart';
import '../widgets/options_grid.dart';
import '../widgets/profile_image_box.dart';
import '../widgets/title_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ScaleUtil.init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Column(
        children: [
          // Top Half - Image Section
          Container(
            height: MediaQuery.of(context).size.height * 0.5, // Reduced further
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/sunset.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black,
                        Colors.transparent,
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      stops: const [0.0, 0.4, 1.0],
                    ),
                  ),
                ),
                SafeArea(
                  child: const TitleBox(),
                ),
              ],
            ),
          ),

          // Bottom Half - Content Section
          Expanded(
            child: Container(
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: ScaleUtil.width(16)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const ProfileImageBox(),
                    const OptionsGrid(),
                    const ActionButtons(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border(
          top: BorderSide(
            color: Colors.white.withOpacity(0.1),
            width: 0.5,
          ),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
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
