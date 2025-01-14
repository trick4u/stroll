import 'package:flutter/material.dart';
import 'package:stroll/services/strings.dart';

import '../services/colors.dart';
import '../services/scaling.dart';

class ProfileImageBox extends StatelessWidget {
  const ProfileImageBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ImageNameBox(),
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(
            left: ScaleUtil.width(70),
            top: ScaleUtil.height(4),
          ),
          child: Text(
            'What is your favorite time\nof the day?',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: 'ProximaNova',
              color: Colors.white,
              fontSize: ScaleUtil.fontSize(20),
              fontWeight: FontWeight.w700,
              height: 1.2,
            ),
          ),
        ),
        SizedBox(height: ScaleUtil.height(8)),
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            StringsCollection.userAnswer,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'ProximaNova',
              color: AppColors.lightColor,
              fontSize: ScaleUtil.fontSize(12),
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ],
    );
  }
}

class ImageNameBox extends StatelessWidget {
  const ImageNameBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScaleUtil.scale(45),
      width: double.infinity,
      child: Stack(
        children: [
          // Left circular red container
          Positioned(
            left: ScaleUtil.scale(30),
            top: ScaleUtil.scale(15),
            child: Container(
              height: ScaleUtil.scale(20),
              width: ScaleUtil.scale(107),
              padding: EdgeInsets.symmetric(
                horizontal: ScaleUtil.width(8),
                vertical: ScaleUtil.height(0),
              ),
              decoration: BoxDecoration(
                color: Color(0xFF121518E5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                textAlign: TextAlign.right,
                StringsCollection.profileName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ScaleUtil.fontSize(11),
                  fontWeight: FontWeight.w600,
                  fontFamily: 'ProximaNova',
                ),
              ),
            ),
          ),
          Positioned(
            left: ScaleUtil.scale(10),
            child: Container(
              height: ScaleUtil.scale(60),
              width: ScaleUtil.scale(60),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF121518E5),
                border: Border.all(
                  color: Color(0xFF121518E5),
                  width: 2,
                ),
                image: const DecorationImage(
                  image: AssetImage('assets/profile.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
