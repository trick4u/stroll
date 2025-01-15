import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../services/colors.dart';
import '../services/scaling.dart';
import '../widgets/action_buttons.dart';
import '../widgets/options_grid.dart';
import '../widgets/profile_image_box.dart';
import '../widgets/title_box.dart';
import '../widgets/top_image_box.dart';
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
        TopImageBox(),

        // Bottom Half - Content Section
        Expanded(
          child: Container(
            color: AppColors.darkColor,
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
