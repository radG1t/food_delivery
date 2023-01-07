import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key, required this.title});

  final String title;

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
