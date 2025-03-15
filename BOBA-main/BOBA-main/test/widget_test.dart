import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:boba/main.dart';

void main() {
  testWidgets('App loads successfully and shows welcome screen', (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(const MyApp());

    // Check if the welcome screen is displayed
    expect(find.text('Welcome to Boba!'), findsOneWidget);
  });
}
