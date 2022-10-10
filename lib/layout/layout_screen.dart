import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

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
              children: const [
                Text(
                  'Abdura7man',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ), Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ), Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              ],
            ),
            Row(
              children: const [
                Text(
                  'Ahmed',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              ],
            ),
            const Text(
              '😂',
              style: TextStyle(fontSize: 50),
            ),
            const CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 200,
              child: CircleAvatar(
                radius: 150,
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/100779215?v=4'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
