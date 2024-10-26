import 'package:flutter/material.dart';

class TextGradient extends StatefulWidget {
  const TextGradient({super.key});

  @override
  State<TextGradient> createState() => _TextGradientState();
}

class _TextGradientState extends State<TextGradient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "Codeline",
          style: TextStyle(
            fontSize: 90,
            foreground: Paint()
              ..shader = const LinearGradient(
                colors: [Colors.orange, Colors.white, Colors.green],
              ).createShader(
                const Rect.fromLTRB(100, 80, 300, 30),
              ),
          ),
        ),
      ),
    );
  }
}
