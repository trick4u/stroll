


import 'package:flutter/material.dart';

import '../services/scaling.dart';

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
