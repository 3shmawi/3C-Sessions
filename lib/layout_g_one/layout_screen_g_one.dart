import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class LayoutScreenGroupOne extends StatefulWidget {
  const LayoutScreenGroupOne({Key? key}) : super(key: key);

  @override
  State<LayoutScreenGroupOne> createState() => _LayoutScreenGroupOneState();
}

class _LayoutScreenGroupOneState extends State<LayoutScreenGroupOne> {
  int abdulr7manCounter = 1;
  int ahmedCounter = 1;

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Welcome to 3C'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      abdulr7manCounter++;
                    });
                  },
                  child: const Text(
                    'Abdura7man',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                Text(
                  '   $abdulr7manCounter',
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        abdulr7manCounter,
                        (index) => const Icon(
                          Icons.star,
                          size: 50,
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      ahmedCounter++;
                    });
                  },
                  child: const Text(
                    'Ahmed',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                Text(
                  '   $ahmedCounter',
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        ahmedCounter,
                        (index) => const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 50,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: const Icon(
                  Icons.flutter_dash,
                  size: 50,
                  color: Colors.yellow,
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
