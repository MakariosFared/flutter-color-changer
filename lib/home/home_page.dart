import 'package:flutter/material.dart';
import 'package:flutter_color_changer/core/color_generation.dart';

class HomePage extends StatefulWidget {
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
    double r = _backgroundColor.r;
    double g = _backgroundColor.g;
    double b = _backgroundColor.b;
    String hexColor =
        '#${_backgroundColor.toARGB32().toRadixString(16).substring(2).toUpperCase()}';

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
                  ),
                ),
                Text(
                  "RGB: (${r.toStringAsFixed(2)}, ${g.toStringAsFixed(2)}, ${b.toStringAsFixed(2)})",
                ),
                Text("Hex: $hexColor"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
