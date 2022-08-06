import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:untitled1/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('IntegrationTest', (tester) async {
    app.main();
    await tester.pumpAndSettle();

    final fabFinder = find.byIcon(Icons.add);

    for(int i = 0; i < 10; i++) {
      await tester.tap(fabFinder);
      await Future.delayed(const Duration(milliseconds: 300));
    }
  });
}