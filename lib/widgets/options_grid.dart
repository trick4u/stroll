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
    return Positioned(
      top: ScaleUtil.proportionalHeight(48),
      left: ScaleUtil.width(20),
      right: ScaleUtil.width(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            mainAxisSpacing: ScaleUtil.height(8),
            crossAxisSpacing: ScaleUtil.width(8),
            childAspectRatio: 3,
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
          ),
          SizedBox(height: ScaleUtil.height(12)),
          Text(
            'Pick your option.',
            style: TextStyle(
              color: Colors.white70,
              fontSize: ScaleUtil.fontSize(14),
              fontFamily: 'ProximaNova',
            ),
          ),
          Text(
            'See who has a similar mind.',
            style: TextStyle(
              color: Colors.white70,
              fontSize: ScaleUtil.fontSize(14),
              fontFamily: 'ProximaNova',
            ),
          ),
        ],
      ),
    );
  }
}