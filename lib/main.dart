import 'dart:ui';

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
          //    primarySwatch: Colors.blue,
          ),
      home: const StartPage(),
    );
  }
}
