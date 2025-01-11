

import 'package:flutter/material.dart';

import '../services/scaling.dart';

class ProfileImageBox extends StatelessWidget {
  const ProfileImageBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
    );
  }
}
