import 'package:flutter_test/flutter_test.dart';
import '../lib/calculator.dart';

void main() {
  group('Calculator Tests', () {
    final calculator = Calculator();

    test('Function calculation test for x = 0', () {
      // y = (0^2 + 0) - 100 = -100
      final result = calculator.calculate(0);
      print('Test for x = 0: Expected -100, got $result'); // Виводимо результат
      expect(result, -100);
    });

    test('Function calculation test for x = 2', () {
      // y = (2^2 + 2) - 100 = (4 + 2) - 100 = -94
      final result = calculator.calculate(2);
      print('Test for x = 2: Expected -94, got $result'); // Виводимо результат
      expect(result, -94);
    });

    test('Function calculation test for x = -3', () {
      // y = ((-3)^2 + (-3)) - 100 = (9 - 3) - 100 = -94
      final result = calculator.calculate(-3);
      print('Test for x = -3: Expected -94, got $result'); // Виводимо результат
      expect(result, -94);
    });

    test('Function calculation test for x = 10', () {
      // y = (10^2 + 10) - 100 = (100 + 10) - 100 = 10
      final result = calculator.calculate(10);
      print('Test for x = 10: Expected 10, got $result'); // Виводимо результат
      expect(result, 10);
    });
  });
}
