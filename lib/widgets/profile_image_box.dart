import 'package:flutter/material.dart';

import '../services/scaling.dart';

class ProfileImageBox extends StatelessWidget {
  const ProfileImageBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Container(
              height: ScaleUtil.scale(32), // Reduced size
              width: ScaleUtil.scale(32), // Reduced size
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white24,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png'),
              ),
            ),
            SizedBox(width: ScaleUtil.width(8)), // Reduced spacing
            Text(
              'Angelina, 28',
              style: TextStyle(
                color: Colors.white,
                fontSize: ScaleUtil.fontSize(16),
                fontWeight: FontWeight.w600,
                fontFamily: 'ProximaNova',
              ),
            ),
          ],
        ),
        SizedBox(height: ScaleUtil.height(12)), // Reduced spacing
        Text(
          'What is your favorite time\nof the day?',
          style: TextStyle(
            fontFamily: 'ProximaNova',
            color: Colors.white,
            fontSize: ScaleUtil.fontSize(20),
            fontWeight: FontWeight.bold,
          ),
        ),
        // Reduced spacing
        Text(
          '"Mine is definitely the peace in the morning."',
          style: TextStyle(
            fontFamily: 'ProximaNova',
            color: Colors.white70,
            fontSize: ScaleUtil.fontSize(12),
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
