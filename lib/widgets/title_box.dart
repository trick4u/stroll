import 'package:flutter/material.dart';
import 'package:stroll/services/colors.dart';

import '../services/scaling.dart';

class TitleBox extends StatelessWidget {
  const TitleBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Stroll Bonfire',
              style: TextStyle(
                fontFamily: 'ProximaNova',
                color: AppColors.lightColor,
                fontSize: ScaleUtil.fontSize(30),
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    offset: Offset(0, 2),
                    blurRadius: 4.0,
                    color: AppColors.darkColor.withOpacity(0.3),
                  ),
                ],
              ),
            ),
            ExpandIcon(
              onPressed: (ds) {},
              isExpanded: false,
              color: AppColors.lightColor,
              size: ScaleUtil.scale(24),
            ),
          ],
        ),
        SizedBox(height: ScaleUtil.height(4)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.access_time,
              color: Colors.white70,
              size: ScaleUtil.scale(16),
              shadows: [
                Shadow(
                  offset: Offset(0, 1),
                  blurRadius: 2.0,
                  color: AppColors.darkColor.withOpacity(0.3),
                ),
              ],
            ),
            SizedBox(width: ScaleUtil.width(4)),
            Text(
              '22h 00m',
              style: TextStyle(
                fontFamily: 'ProximaNova',
                color: Colors.white70,
                fontSize: ScaleUtil.fontSize(14),
                shadows: [
                  Shadow(
                    offset: Offset(0, 1),
                    blurRadius: 2.0,
                    color: AppColors.darkColor.withOpacity(0.3),
                  ),
                ],
              ),
            ),
            SizedBox(width: ScaleUtil.width(12)),
            Icon(
              Icons.person,
              color: Colors.white70,
              size: ScaleUtil.scale(16),
              shadows: [
                Shadow(
                  offset: Offset(0, 1),
                  blurRadius: 2.0,
                  color: AppColors.darkColor.withOpacity(0.3),
                ),
              ],
            ),
            SizedBox(width: ScaleUtil.width(4)),
            Text(
              '103',
              style: TextStyle(
                color: Colors.white70,
                fontSize: ScaleUtil.fontSize(14),
                shadows: [
                  Shadow(
                    offset: Offset(0, 1),
                    blurRadius: 2.0,
                    color: AppColors.darkColor.withOpacity(0.3),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
