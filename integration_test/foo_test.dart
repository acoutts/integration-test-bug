import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:int_test_bug/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('should enter the text specified', (tester) async {
    app.main();
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextField), 'Foo test');
    await tester.pumpAndSettle();
    expect(find.text('Foo test'), findsOneWidget);
  });
}
