import 'package:flutter/material.dart';

import '../services/scaling.dart';
import '../widgets/options_grid.dart';
import '../widgets/profile_image_box.dart';
import '../widgets/title_box.dart';
import 'home_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
