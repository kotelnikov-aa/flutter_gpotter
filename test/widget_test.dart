import 'package:flutter/material.dart';
import 'package:flutter_gpotter/presentation/auth_pages/welcome_screen.dart';
import 'package:flutter_test/flutter_test.dart';



void main() {

  testWidgets('Проверка перехода на форму авторизации', (WidgetTester tester) async {
    await tester.pumpWidget(const WelcomeScreen());

    final loginFinder = find.text('login in');

    expect(loginFinder, findsOneWidget);


    await tester.tap(loginFinder);
    await tester.pumpAndSettle();

    final loginBtnFinder = find.text('login in');

    // Verify that our counter has incremented.
    expect(loginBtnFinder, findsOneWidget);
  });

}
