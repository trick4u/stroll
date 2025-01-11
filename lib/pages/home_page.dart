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
      // backgroundColor: AppColors.darkColor,
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
          ProfileImageBox(),
            OptionsGrid(),
        ],
      ),
    );
  }
}
