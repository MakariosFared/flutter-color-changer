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
    return GestureDetector(
      onTap: _changeColor,
      child: Scaffold(
        backgroundColor: _backgroundColor,
        body: GestureDetector(
          onTap: _changeColor,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            child: Center(
              child: Text(
                "Hello there",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
