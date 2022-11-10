// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
import 'package:flutter/material.dart';
import 'package:flutter_gpotter/presentation/auth_pages/welcome_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Widget createWidgetForTesting({required Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

  testWidgets('Test_Welcome_Screen', (WidgetTester tester) async {
    await tester
        .pumpWidget(createWidgetForTesting(child: const WelcomeScreen()));
    await tester.pumpAndSettle();

    final loginFinder = find.text('login in');

    expect(loginFinder, findsOneWidget);

    final fingerFinder = find.text('fingerprint');

    expect(fingerFinder, findsOneWidget);

    final regFinder = find.text('registration');

    expect(regFinder, findsOneWidget);
  });
}
