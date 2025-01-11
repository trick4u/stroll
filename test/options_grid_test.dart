import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stroll/widgets/options_box.dart';
import 'package:stroll/widgets/options_grid.dart';


void main() {
  testWidgets('OptionsGrid displays all 4 options', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: OptionsGrid(),
        ),
      ),
    );

    // Verify that all 4 options are displayed
    expect(find.byType(OptionBox), findsNWidgets(4));
    
    // Verify the specific options text
    expect(find.text('The peace in the early mornings'), findsOneWidget);
    expect(find.text('The magical golden hours'), findsOneWidget);
    expect(find.text('Wind-down time after dinners'), findsOneWidget);
    expect(find.text('The serenity past midnight'), findsOneWidget);
  });

  testWidgets('OptionsGrid handles selection', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: OptionsGrid(),
        ),
      ),
    );

    // Initially, option D should be selected
    final initialSelectedContainer = tester.widget<Container>(
      find.descendant(
        of: find.byType(OptionBox).at(3),
        matching: find.byType(Container),
      ).first,
    );
    final initialDecoration = initialSelectedContainer.decoration as BoxDecoration;
    expect(initialDecoration.color, equals(const Color(0xFF6B4EFF)));

    // Tap option A
    await tester.tap(find.byType(OptionBox).first);
    await tester.pump();

    // Verify that option A is now selected
    final newSelectedContainer = tester.widget<Container>(
      find.descendant(
        of: find.byType(OptionBox).first,
        matching: find.byType(Container),
      ).first,
    );
    final newDecoration = newSelectedContainer.decoration as BoxDecoration;
    expect(newDecoration.color, equals(const Color(0xFF6B4EFF)));
  });

  testWidgets('OptionsGrid displays helper text', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: OptionsGrid(),
        ),
      ),
    );

    // Verify helper text is displayed
    expect(find.text('Pick your option.'), findsOneWidget);
    expect(find.text('See who has a similar mind.'), findsOneWidget);
  });
}