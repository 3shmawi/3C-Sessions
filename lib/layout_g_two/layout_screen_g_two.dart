import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class LayoutScreenGroupTwo extends StatelessWidget {
  const LayoutScreenGroupTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    int count = 5;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        elevation: 50,
        leading: const Icon(Icons.menu),
        centerTitle: true,
        title: const Text(
          'Welcome at 3C',
        ),
        actions: const [
          Icon(Icons.search),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 50,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 200,
                    width: 100,
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 200,
                    width: 100,
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 200,
                    width: 510,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                  'I\'m Box',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.white,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.black,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.white,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.black,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
