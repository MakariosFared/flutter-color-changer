import 'dart:math';
import 'package:flutter/material.dart';

/// A class responsible for generating random RGB colors.
class ColorGeneration {
  final Random _random = Random();

  /// Generates a random color using RGB values (0–255).
  Color generateRandomColor() {
    const int a = 255;
    final int r = _random.nextInt(256);
    final int g = _random.nextInt(256);
    final int b = _random.nextInt(256);

    return Color.fromARGB(a, r, g, b);
  }
}
