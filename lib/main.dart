import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'layout_g_one/layout_screen_g_one.dart';
import 'layout_g_two/layout_screen_g_two.dart';



void main() {

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '3C',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LayoutScreenGroupTwo(),
    );
  }
}

