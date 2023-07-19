import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:solidcolour/features/color_changer/models/random_colour_generator.dart';
import 'package:solidcolour/features/color_changer/viewmodels/colour_changer_viewmodel.dart';
import 'package:solidcolour/features/color_changer/views/colour_change_screen.dart';

void main() {
  testWidgets('ColourChangeScreen changes colour upon tap',
      (WidgetTester tester) async {
    /// Arrange: Setup ColorChangerViewModel and ColorChangerScreen for test
    final colorChangerViewModel = ColourChangerViewModel(
      colorGenerator: RandomColourGenerator(),
    );
    await tester.pumpWidget(
      ChangeNotifierProvider<ColourChangerViewModel>.value(
        value: colorChangerViewModel,
        child: MaterialApp(home: ColourChangeScreen()),
      ),
    );

    /// Act: Perform the tap action
    final initialColor = colorChangerViewModel.currentColor;
    await tester.tap(find.byType(GestureDetector));
    await tester.pumpAndSettle();

    /// Assert: Check if the color is now changed
    final newColor = colorChangerViewModel.currentColor;
    expect(newColor, isNot(equals(initialColor)));
  });
}
