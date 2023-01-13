import 'package:flutter/material.dart';
import 'package:food_delivery/startPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food_delivery',
      theme: ThemeData(
          fontFamily: 'GoogleFonts.lora()',
          textTheme: const TextTheme(
            headline1: TextStyle(
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.w800,
            ),
            headline2: TextStyle(
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.w800,
            ),
          )),
      home: const StartPage(),
    );
  }
}
