import 'package:flutter/material.dart';

import '../services/scaling.dart';
import '../services/strings.dart';
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
      'identifier': StringsCollection.optionAIdentifier,
      'label': StringsCollection.optionA,
    },
    {
      'identifier': StringsCollection.optionBIdentifier,
      'label': StringsCollection.optionB,
    },
    {
      'identifier': StringsCollection.optionCIdentifier,
      'label': StringsCollection.optionC,
    },
    {
      'identifier': StringsCollection.optionDIdentifier,
      'label': StringsCollection.optionD,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.only(
          top: ScaleUtil.height(8), bottom: ScaleUtil.height(8)),
      shrinkWrap: true,
      physics: AlwaysScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: ScaleUtil.height(8),
      crossAxisSpacing: ScaleUtil.width(8),
      childAspectRatio: 2.8,
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
