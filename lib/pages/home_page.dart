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
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Background Image with Gradient
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/sunset.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(0.5),
                      Colors.transparent,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: const [0.2, 0.6, 1.0],
                  ),
                ),
              ),
            ),
          ),

          // Content Container
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Top Section (Title)
                Padding(
                  padding: EdgeInsets.only(top: ScaleUtil.height(16)),
                  child: const TitleBox(),
                ),

                // Spacer to push content to bottom half
                const Spacer(),

                // Bottom Half Content
                Container(
                  // Takes bottom 60% of screen
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScaleUtil.width(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ProfileImageBox(),
                        SizedBox(height: ScaleUtil.height(24)),
                        const OptionsGrid(),
                        const ActionButtons(),
                      ],
                    ),
                  ),
                ),
              ],
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
          padding: EdgeInsets.all(ScaleUtil.width(12)),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(0.1),
          ),
          child: Icon(
            Icons.mic,
            color: Colors.white,
            size: ScaleUtil.scale(24),
          ),
        ),
        SizedBox(width: ScaleUtil.width(16)),
        Container(
          padding: EdgeInsets.all(ScaleUtil.width(12)),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xFF6B4EFF),
          ),
          child: Icon(
            Icons.arrow_forward,
            color: Colors.white,
            size: ScaleUtil.scale(24),
          ),
        ),
      ],
    );
  }
}
