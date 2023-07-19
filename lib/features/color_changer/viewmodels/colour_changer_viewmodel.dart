import 'package:flutter/material.dart';
import 'package:solidcolour/features/color_changer/models/random_colour_generator.dart';

/// handles color generation logic for views that require random colors.
///
/// This class extends [ChangeNotifier] to notify listeners when a change occurs
class ColourChangerViewModel extends ChangeNotifier {
  final RandomColourGenerator _colorGenerator;
  Color? _currentColor;

  /// Get the current color.
  Color? get currentColor => _currentColor;

  /// Creates an instance of [ColourChangerViewModel]
  ///
  /// Takes a [RandomColourGenerator] as a parameter
  ColourChangerViewModel({required RandomColourGenerator colorGenerator})
      : _colorGenerator = colorGenerator,
        _currentColor = Colors.white;

  /// Requests a new random color from the [RandomColourGenerator].
  ///
  /// Whenever a new color is generated, all listeners are notified.
  void generateNewColor() {
    _currentColor = _colorGenerator.generateRandomColor();
    notifyListeners();
  }
}
