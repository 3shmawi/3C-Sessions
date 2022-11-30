import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class LayoutScreenGroupTwo extends StatelessWidget {
  const LayoutScreenGroupTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();

    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
          ),
          title: const Text('Session 2'),
          centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: defaultText('Input'),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          color: Colors.white,
                          height: 1.5,
                          width: double.infinity,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0, left: 20),
                        child: defaultText('Result'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            row('AC', 'DC', '%', '/'),
            const SizedBox(
              height: 8,
            ),
            row('7', '8', '9', 'x'),
            const SizedBox(
              height: 8,
            ),
            row('4', '5', '6', '-'),
            const SizedBox(
              height: 8,
            ),
            row('1', '2', '3', '+'),
            const SizedBox(
              height: 8,
            ),
            row('0', '.', 'd', '='),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

//return type      name        parameter        body     =>
  Row row(String bt1, String bt2, String bt3, String bt4) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            padding:
                const EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(10),
            ),
            child: defaultText(bt1),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Container(
            padding:
                const EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(10),
            ),
            child: defaultText(bt2),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Container(
            padding:
                const EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(10),
            ),
            child: defaultText(bt3),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Container(
            padding:
                const EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(10),
            ),
            child: defaultText(bt4),
          ),
        ),
      ],
    );
  }

  Widget defaultText(String text) => Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
}
