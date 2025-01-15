import 'package:flutter/material.dart';
import 'package:stroll/services/scaling.dart';

import '../services/colors.dart';
import 'title_box.dart';

class TopImageBox extends StatelessWidget {
  const TopImageBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
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
                  AppColors.darkColor,
                  Colors.transparent,
                  Colors.transparent,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: const [0.0, 0.4, 1.0],
              ),
            ),
          ),
          Positioned(
            top: ScaleUtil.height(14),
            left: ScaleUtil.width(80),
            child: SafeArea(
              child: const TitleBox(),
            ),
          ),
        ],
      ),
    );
  }
}
