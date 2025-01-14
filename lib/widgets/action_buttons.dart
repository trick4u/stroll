import 'package:flutter/material.dart';

import '../services/colors.dart';
import '../services/scaling.dart';
import '../services/strings.dart';

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
             StringsCollection.pickOptionText,
              style: TextStyle(
                color: Colors.white70,
                fontSize: ScaleUtil.fontSize(12),
                fontFamily: 'ProximaNova',
              ),
            ),
            Text(
              StringsCollection.findSimilarMindsText,
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
              color: AppColors.lightColor,
              width: 2,
            ),
          ),
          child: Icon(
            Icons.mic,
            color: AppColors.lightColor,
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
            color: AppColors.lightColor,
          ),
          child: Icon(
            Icons.arrow_forward,
            color: AppColors.darkColor,
            size: ScaleUtil.scale(24),
          ),
        ),
      ],
    );
  }
}
