import 'package:flutter/material.dart';
import 'package:hello_flutter/screens/bmi/bmi_screen.dart';
import 'package:hello_flutter/screens/bmi_calculator.dart';
import 'package:hello_flutter/screens/login.dart';
import 'package:hello_flutter/screens/messengar.dart';
import 'package:hello_flutter/screens/review.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home:  LoginScreen(),
    );
  }
}
