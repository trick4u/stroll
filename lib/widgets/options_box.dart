import 'package:flutter/material.dart';
import 'package:stroll/services/colors.dart';

import '../services/scaling.dart';

class OptionBox extends StatelessWidget {
  final String label;
  final String identifier;
  final bool isSelected;
  final VoidCallback onTap;

  const OptionBox({
    super.key,
    required this.label,
    required this.identifier,
    this.isSelected = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: ScaleUtil.width(16),
          vertical: ScaleUtil.height(12),
        ),
        decoration: BoxDecoration(
          color: Color(0xff232A2E),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? AppColors.lightColor : Colors.transparent,
            width: 1.5,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: ScaleUtil.width(24),
              height: ScaleUtil.width(24),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected
                    ? AppColors.lightColor
                    : Colors.white.withOpacity(0.1),
              ),
              child: Center(
                child: Text(
                  identifier,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: ScaleUtil.fontSize(14),
                    fontFamily: 'ProximaNova',
                  ),
                ),
              ),
            ),
            SizedBox(width: ScaleUtil.width(12)),
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: ScaleUtil.fontSize(12),
                  fontFamily: 'ProximaNova',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
