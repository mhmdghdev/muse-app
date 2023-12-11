import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const Muse());
}

class Muse extends StatelessWidget {
  const Muse({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Muse Arabia',
      home: HomeScreen(),
    );
  }
}