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
                color: Color(0xffE5E5E5),
                fontSize: ScaleUtil.fontSize(12),
                fontFamily: 'ProximaNova',
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              StringsCollection.findSimilarMindsText,
              style: TextStyle(
                color: Color(0xffE5E5E5),
                fontSize: ScaleUtil.fontSize(12),
                fontFamily: 'ProximaNova',
                fontWeight: FontWeight.w300,
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
              color: AppColors.lightPurple,
              width: 2,
            ),
          ),
          child: Icon(
            Icons.mic,
            color: AppColors.lightPurple,
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
            color: Color(
              0xff8B88EF,
            ),
            // color: AppColors.lightColor,
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
