import 'package:flutter/material.dart';
import 'package:uts_mobile/pages/hal1.dart';
import 'package:uts_mobile/pages/hal2.dart';
import 'package:uts_mobile/pages/hal3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Hal1(),
      routes: {
        '/hal1': (context) => Hal1(),
        '/hal2': (context) => Hal2(),
        '/hal3': (context) => Hal3(),
      },
    );
  }
}