import 'package:flutter/material.dart';
import 'package:flutter_color_changer/core/color_generation.dart';

/// The main page of the Color Changer application.
///
/// Displays a random color and its RGB and Hex values.
/// The background color changes when the user taps anywhere on the screen.
class HomePage extends StatefulWidget {
  /// Creates an instance of [HomePage].
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ColorGeneration _colorGeneration = ColorGeneration();
  Color _backgroundColor = Colors.white;

  void _changeColor() {
    setState(() {
      _backgroundColor = _colorGeneration.generateRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    final double r = _backgroundColor.r;
    final double g = _backgroundColor.g;
    final double b = _backgroundColor.b;
    final String hexColor =
    '#${_backgroundColor
        .toARGB32()
        .toRadixString(16)
        .substring(2)
        .toUpperCase()}';
    final Color textColor = (_backgroundColor.computeLuminance() > 0.5)
        ? Colors.black
        : Colors.white;

    return GestureDetector(
      onTap: _changeColor,
      child: Scaffold(
        backgroundColor: _backgroundColor,
        body: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          color: _backgroundColor,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 16,
              children: [
                Text(
                  "Hello there",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
                Text(
                  "RGB: (${r.toStringAsFixed(2)}, "
                  "${g.toStringAsFixed(2)}, "
                  "${b.toStringAsFixed(2)})",
                  style: TextStyle(color: textColor),
                ),
                Text("Hex: $hexColor", style: TextStyle(color: textColor)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
