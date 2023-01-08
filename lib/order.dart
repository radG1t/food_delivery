import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        reverse: false,
        //controller: controller,
        children: [
          Container(
            height: 45,
            width: 45,
            color: Colors.red,
          ),
          Container(
            height: 45,
            width: 45,
            color: Colors.lightBlue,
          ),
          Container(
            height: 45,
            width: 45,
            color: Colors.indigoAccent,
          ),
        ],
      ),
    );
  }
}
