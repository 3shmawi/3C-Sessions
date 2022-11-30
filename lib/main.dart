import 'package:flutter/material.dart';
import 'package:hello_flutter/screens/bmi/bmi_screen.dart';
import 'package:hello_flutter/screens/review.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      home: BMICalculator(),
    );
  }
}
