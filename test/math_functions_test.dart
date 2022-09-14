import 'package:flutter_application_1/functions/math_functions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Math Fuctions -', () {
    test('check for add two numbers', () {
      //ARRANGE
      var a = 10;
      var b = 20;
      //ACT
      var sum = add(a, b);
      //ASSERT
      expect(sum, 30);
    });

    test('check for substract two numbers', () {
      //ARRANGE
      var a = 10;
      var b = 20;
      //ACT
      var subs = substract(a, b);
      //ASSERT
      expect(subs, -10);
    });

    test('check for multiply two numbers', () {
      //ARRANGE
      var a = 10;
      var b = 20;
      //ACT
      var multy = multiply(a, b);
      //ASSERT
      expect(multy, 200);
    });
  });
}
