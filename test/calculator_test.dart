import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../lib/calculator.dart';
import '../lib/main.dart';

void main() {
  final calculator = Calculator();
  group('Calculator Tests', () {
    test('Function calculation test for x = 0', () {
      expect(calculator.calculate(0), -100);
    });
    test('Function calculation test for x = 2', () {
      expect(calculator.calculate(2), -94);
    });
    test('Function calculation test for x = -3', () {
      expect(calculator.calculate(-3), -94);
    });
    test('Function calculation test for x = 10', () {
      expect(calculator.calculate(10), 10);
    });
  });
  group('UI Tests', () {
    testWidgets('Check app title', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      expect(find.text('KN-32: Mykhailo Mosiichuk last Flutter App'), findsOneWidget);
    });
    testWidgets('Check if FloatingActionButton is present with correct icon', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      final fab = find.byType(FloatingActionButton);
      expect(fab, findsNWidgets(2));
      expect(find.byIcon(Icons.add), findsOneWidget);
      expect(find.byIcon(Icons.remove), findsOneWidget);
    });
    testWidgets('Check step size of the counter', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      expect(find.text('Current value of x: 0.0'), findsOneWidget);
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();
      expect(find.text('Current value of x: 2.0'), findsOneWidget);
      await tester.tap(find.byIcon(Icons.remove));
      await tester.pump();
      expect(find.text('Current value of x: 0.0'), findsOneWidget);
    });
  });
}
