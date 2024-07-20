import 'package:flutter/material.dart';
import 'bmi_claculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BmiClaculator(),
    );
  }
}
