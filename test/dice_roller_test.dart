import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:first_app/dice_roller.dart';

void main() {
  testWidgets('DiceRoller changes image when rolled using injected Random', (
    WidgetTester tester,
  ) async {
    // Use a seeded Random so the result is deterministic
    final seededRandom = Random(42);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: DiceRoller(random: seededRandom)),
      ),
    );

    // Initial image should show dice-1.png (initial state)
    final imageFinder = find.byKey(const Key('dice-image'));
    expect(imageFinder, findsOneWidget);

    final imageWidgetBefore = tester.widget<Image>(imageFinder);
    final providerBefore = imageWidgetBefore.image as AssetImage;
    expect(providerBefore.assetName, 'assets/images/dice-1.png');

    // Calculate expected next roll using the same seed
    final expectedNext = Random(42).nextInt(6) + 1;

    // Tap the roll button and rebuild
    final buttonFinder = find.byKey(const Key('roll-button'));
    expect(buttonFinder, findsOneWidget);
    await tester.tap(buttonFinder);
    await tester.pump();

    final imageWidgetAfter = tester.widget<Image>(imageFinder);
    final providerAfter = imageWidgetAfter.image as AssetImage;
    expect(providerAfter.assetName, 'assets/images/dice-$expectedNext.png');
  });
}
