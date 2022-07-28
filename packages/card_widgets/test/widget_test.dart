import 'package:card_widgets/card_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('TextCard has expected styling', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: TextCard(
              text: 'Some text',
            ),
          ),
        ),
      ),
    );

    await expectLater(
        find.byType(MaterialApp), matchesGoldenFile('text_card.png'));
  });
}
