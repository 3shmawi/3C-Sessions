import 'package:flutter/material.dart';

class Exam extends StatelessWidget {
  const Exam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Ahmed'),
          Row(
            children: [
              Container(
                height: 200,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 200,
                width: 100,
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
