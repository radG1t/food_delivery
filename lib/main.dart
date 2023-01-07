import 'dart:ui';

import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, centerTitle: true,
        //    shadowColor: Colors.white,
        title: const Text(
          'FOODECA',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: Column(
        children: const [
          Text('Choose your prefrence'),
          Text(
            'What`s your',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            'favorite Food?',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          width: double.infinity,
          child: FloatingActionButton.extended(
            backgroundColor: Colors.black87,
            onPressed: () {},
            label: const Text('Get Started'),
          ),
        ),
      ),
    );
  }
}
