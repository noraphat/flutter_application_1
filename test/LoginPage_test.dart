import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/LoginPage.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Login Page should have title', (WidgetTester tester)async{
    //ARRANGE
    await tester.pumpWidget(MaterialApp(home: LoginPage(),));
    //ACT
    Finder title = find.text('LoginPage');
    //ASSERT
    expect(title, findsOneWidget);
  });
  testWidgets('Login Page should have email text field', (WidgetTester tester)async{
    //ARRANGE
    await tester.pumpWidget(MaterialApp(home: LoginPage(),));
    //ACT
    Finder usernameTextField = find.byKey(const ValueKey("email"));
    //ASSERT
    expect(usernameTextField, findsOneWidget);
  });
  testWidgets('Login Page should have password text field', (WidgetTester tester)async{
    //ARRANGE
    await tester.pumpWidget(MaterialApp(home: LoginPage(),));
    //ACT
    Finder passwordTextField = find.byKey(const ValueKey("password"));
    //ASSERT
    expect(passwordTextField, findsOneWidget);
  });

  testWidgets('Login Page should have login button', (WidgetTester tester)async{
    //ARRANGE
    await tester.pumpWidget(MaterialApp(home: LoginPage(),));
    //ACT
    Finder loginButton = find.byType(ElevatedButton);
    //ASSERT
    expect(loginButton, findsOneWidget);
  });

  testWidgets('Login Page should show require field errer message if user set email & password is empty', (WidgetTester tester)async{
    //ARRANGE
    await tester.pumpWidget(MaterialApp(home: LoginPage(),));
    //ACT
    Finder loginButton = find.byType(ElevatedButton);
    await tester.tap(loginButton);
    await tester.pumpAndSettle();
    Finder errorTexts = find.text('Require Field');
    //ASSERT
    expect(errorTexts, findsNWidgets(2));
  });

  testWidgets('Login Page show Plase enter a valid email format error message if user set email not correct format', (WidgetTester tester)async{
    //ARRANGE
    await tester.pumpWidget(MaterialApp(home: LoginPage(),));
    //ACT
    Finder usernameTextField = find.byKey(const ValueKey("email"));
    await tester.enterText(usernameTextField, "aabbbsbbsbdbdbfbbss");

    Finder loginButton = find.byType(ElevatedButton);
    await tester.tap(loginButton);
    await tester.pumpAndSettle();
    Finder errorTexts = find.text('Please enter a valid email format');
    //ASSERT
    expect(errorTexts, findsOneWidget);
  });

  testWidgets('Login Page submit form when user input email & password is valid', (WidgetTester tester)async{
    //ARRANGE
    await tester.pumpWidget(MaterialApp(home: LoginPage(),));
    //ACT
    Finder usernameTextField = find.byKey(const ValueKey("email"));
    Finder passwordTextField = find.byKey(const ValueKey("password"));
    await tester.enterText(usernameTextField, "noraphat@gmail.com");
    await tester.enterText(passwordTextField, "password");

    Finder loginButton = find.byType(ElevatedButton);
    await tester.tap(loginButton);
    await tester.pumpAndSettle();
    Finder errorTexts = find.text('Require Field');
    //ASSERT
    expect(errorTexts, findsNothing);
  });
}