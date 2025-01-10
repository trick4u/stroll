import 'package:flutter/material.dart';

import '../services/colors.dart';
import '../services/scaling.dart';
import '../widgets/title_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ScaleUtil.init(context);
    return Scaffold(
      backgroundColor: AppColors.darkColor,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: ScaleUtil.proportionalHeight(70),
                width: ScaleUtil.fullWidth,
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
                        Colors.black,
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      stops: [0.1, 0.4],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(color: Colors.black),
                ),
              )
            ],
          ),
          TitleBox(),
          // Profile Section
          Positioned(
            left: ScaleUtil.width(30),
            top: ScaleUtil.proportionalHeight(60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: ScaleUtil.scale(50),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child: CircleAvatar(
                        radius: ScaleUtil.scale(50),
                        backgroundImage: AssetImage('assets/profile.png'),
                      ),
                    ),
                    SizedBox(
                      width: ScaleUtil.width(10),
                    ),
                    Text(
                      'Angelina, 28',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: ScaleUtil.fontSize(16),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: ScaleUtil.height(15)),
                Text(
                  'What is your favorite time\nof the day?',
                  style: TextStyle(
                    fontFamily: 'ProximaNova',
                    color: Colors.white,
                    fontSize: ScaleUtil.fontSize(20),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: ScaleUtil.height(8)),
                Text(
                  '"Mine is definitely the peace in the morning."',
                  style: TextStyle(
                    fontFamily: 'ProximaNova',
                    color: Colors.white70,
                    fontSize: ScaleUtil.fontSize(14),
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
