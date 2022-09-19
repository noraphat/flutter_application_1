import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/LoginPage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  group('Login Page Flow - ', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    testWidgets(
        'Login Page submit form when user input email & password is valid',
        (WidgetTester tester) async {
      //ARRANGE
      await tester.pumpWidget(MaterialApp(
        home: LoginPage(),
      ));
      //ACT
      Finder usernameTextField = find.byKey(const ValueKey("email"));
      Finder passwordTextField = find.byKey(const ValueKey("password"));
      await tester.enterText(usernameTextField, "noraphat@gmail.com");
      await tester.enterText(passwordTextField, "password");

      Finder loginButton = find.byType(ElevatedButton);
      await tester.tap(loginButton);
      await tester.pumpAndSettle();
      Finder title = find.text('This is homepage');
      //ASSERT
      expect(title, findsOneWidget);
    });
  });
}
