import 'package:flutter/material.dart';
import 'package:flutter_color_changer/home/home_page.dart';

/// The root widget of the Color Changer application.
///
/// It configures the [MaterialApp] and sets the initial
/// screen to [HomePage].
class ColorChangerApp extends StatelessWidget {
  /// Creates an instance of [ColorChangerApp].
  const ColorChangerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
