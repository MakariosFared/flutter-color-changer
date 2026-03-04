import 'dart:math';
import 'package:flutter/material.dart';

class ColorGeneration {
  final Random _random = Random();

  Color generateRandomColor() {
    int r = _random.nextInt(256);
    int g = _random.nextInt(256);
    int b = _random.nextInt(256);
    return Color.fromARGB(255, r, g, b);
  }
}
