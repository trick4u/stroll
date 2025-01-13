import 'package:flutter/material.dart';

import '../services/scaling.dart';
import 'options_box.dart';

class OptionsGrid extends StatefulWidget {
  const OptionsGrid({super.key});

  @override
  State<OptionsGrid> createState() => _OptionsGridState();
}

class _OptionsGridState extends State<OptionsGrid> {
  int selectedIndex = 3; // Default selected option (The serenity past midnight)

  final List<Map<String, String>> options = [
    {
      'identifier': 'A',
      'label': 'The peace in the early mornings',
    },
    {
      'identifier': 'B',
      'label': 'The magical golden hours',
    },
    {
      'identifier': 'C',
      'label': 'Wind-down time after dinners',
    },
    {
      'identifier': 'D',
      'label': 'The serenity past midnight',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.only(
          top: ScaleUtil.height(8), bottom: ScaleUtil.height(16)),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(), // Disable scrolling
      crossAxisCount: 2,
      mainAxisSpacing: ScaleUtil.height(8),
      crossAxisSpacing: ScaleUtil.width(8),
      childAspectRatio: 3, // Adjusted for better height
      children: List.generate(
        options.length,
        (index) => OptionBox(
          label: options[index]['label']!,
          identifier: options[index]['identifier']!,
          isSelected: selectedIndex == index,
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
