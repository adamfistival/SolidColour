import 'dart:math';
import 'package:flutter/material.dart';

/// A class that generates random colors.
class RandomColourGenerator {
  final Random _random = Random();

  /// Generates a random color using the RGB color space.
  ///
  /// Returns a [Color] object with random red, green, and blue values.
  Color generateRandomColor() {
    const int rgbValue = 256;

    return Color.fromRGBO(
      _random.nextInt(rgbValue),
      _random.nextInt(rgbValue),
      _random.nextInt(rgbValue),
      1,
    );
  }
}
