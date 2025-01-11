import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stroll/widgets/options_box.dart';


void main() {
  testWidgets('OptionBox displays correct label and identifier', (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: OptionBox(
            label: 'Test Option',
            identifier: 'A',
            isSelected: false,
            onTap: () {},
          ),
        ),
      ),
    );

    // Verify that the label and identifier are displayed
    expect(find.text('Test Option'), findsOneWidget);
    expect(find.text('A'), findsOneWidget);
  });

  testWidgets('OptionBox changes appearance when selected', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: OptionBox(
            label: 'Test Option',
            identifier: 'A',
            isSelected: true,
            onTap: () {},
          ),
        ),
      ),
    );

    // Find the container and verify its color when selected
    final container = tester.widget<Container>(
      find.descendant(
        of: find.byType(GestureDetector),
        matching: find.byType(Container),
      ).first,
    );

    final decoration = container.decoration as BoxDecoration;
    expect(decoration.color, equals(const Color(0xFF6B4EFF)));
  });

  testWidgets('OptionBox onTap callback is called', (WidgetTester tester) async {
    bool wasTapped = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: OptionBox(
            label: 'Test Option',
            identifier: 'A',
            isSelected: false,
            onTap: () {
              wasTapped = true;
            },
          ),
        ),
      ),
    );

    // Tap the widget
    await tester.tap(find.byType(GestureDetector));
    await tester.pump();

    // Verify that the callback was called
    expect(wasTapped, isTrue);
  });
}