import 'package:flutter/material.dart';

class TestNavigate extends StatelessWidget {
  const TestNavigate({required this.result, required this.isMale, Key? key})
      : super(key: key);

  final double result;
  final bool isMale;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          color: Colors.grey[300],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          margin: EdgeInsets.all(20),
          child: SizedBox(
            height: 200,
            width: 200,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Gender: ${isMale ? 'MALE' : 'FEMALE'}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 140,
                    height: 20,
                    child: Text(
                      'Result: $result',
                      textAlign: TextAlign.center,

                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
