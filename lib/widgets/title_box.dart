import 'package:flutter/material.dart';
import 'package:stroll/services/colors.dart';
import 'package:stroll/services/strings.dart';

import '../services/scaling.dart';

class TitleBox extends StatelessWidget {
  const TitleBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ScaleUtil.only(
        top: 16,
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  StringsCollection.appTitle,
                  style: TextStyle(
                    fontFamily: 'ProximaNova',
                    color: Color(0xffCCC8FF),
                    fontSize: ScaleUtil.fontSize(34),
                    fontWeight: FontWeight.w600,
                    shadows: [
                      Shadow(
                        offset: Offset(0, 1), // Slightly larger offset
                        blurRadius: 2.0,
                        color: AppColors.darkColor.withOpacity(0.2),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: ScaleUtil.width(4)),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.lightColor,
                  size: ScaleUtil.scale(25),
                )
              ],
            ),
            SizedBox(height: ScaleUtil.height(2)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.access_time,
                  color: Colors.white.withOpacity(0.7),
                  size: ScaleUtil.scale(15),
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
                  StringsCollection.viewersCount,
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
                SizedBox(width: ScaleUtil.width(16)),
                Icon(
                  Icons.person_2_outlined,
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
                  StringsCollection.participantsCount,
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
        ),
      ),
    );
  }
}
