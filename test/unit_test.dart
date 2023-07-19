import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solidcolour/features/color_changer/models/random_colour_generator.dart';

/// Test that two consecutive colors are not the same
void main() {
  group('RandomColorGenerator', () {
    test('should generate a valid color', () {
      final generator = RandomColourGenerator();
      final color1 = generator.generateRandomColor();
      final color2 = generator.generateRandomColor();
      expect(color1, isInstanceOf<Color>());
      expect(color2, isInstanceOf<Color>());
      expect(color1, isNot(equals(color2)));
    });
  });
}
