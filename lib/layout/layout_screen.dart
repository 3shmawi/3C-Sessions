import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int abdulrhmanCounter = 1;
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
                      abdulrhmanCounter++;
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
                  '   $abdulrhmanCounter',
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        abdulrhmanCounter,
                            (index) =>  Text('$index'),
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
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: List.generate(
                    abdulrhmanCounter,
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
      ),
    );
  }
}
