import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//StatelessWidget

//StatefulWidget

//main
//runApp
//MaterialApp
//Scaffold

//Text
//Icon
//AppBar
//SafeArea
//IconButton
//Center

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Icon(
            Icons.cabin,
            size: 50,
            color: Colors.deepOrange,
          ),
        ),
      ),
    );
  }
}
