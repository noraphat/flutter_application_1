import 'package:flutter_application_1/functions/email_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('validate for empty email', () {
    //ARRANGE
    var email = "";
    //ACT
    var result = EmailValidator.validateEmail(email);
    //ASSERT
    expect(result, "Require Field");
  });
  test('validate for invalid email', () {
    //ARRANGE
    var email = "aabbccdd";
    //ACT
    var result = EmailValidator.validateEmail(email);
    //ASSERT
    expect(result, "Please enter a valid email format");
  });
  test('validate for valid email', () {
    //ARRANGE
    var email = "noraphat@gmail.com";
    //ACT
    var result = EmailValidator.validateEmail(email);
    //ASSERT
    expect(result, null);
  });

  test('validate for empty password', () {
    //ARRANGE
    var password = "";
    //ACT
    var result = EmailValidator.validatePassword(password);
    //ASSERT
    expect(result, "Require Field");
  });
  test('validate for invalid password', () {
    //ARRANGE
    var password = "passwor";
    //ACT
    var result = EmailValidator.validatePassword(password);
    //ASSERT
    expect(result, "Please enter at least 8 characters of your password");
  });
  test('validate for valid password', () {
    //ARRANGE
    var password = "password";
    //ACT
    var result = EmailValidator.validatePassword(password);
    //ASSERT
    expect(result, null);
  });
}
