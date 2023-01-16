import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery/order.dart';
import 'package:food_delivery/startPage.dart';

class BottomNav extends StatelessWidget {
  final PageController myPage = PageController(initialPage: 0);

  PageController controller;
  BottomNav({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: SizedBox(
            height: 35,
            child: BottomAppBar(
              color: Colors.black,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: const Icon(
                        CupertinoIcons.home,
                        color: Colors.white,
                        size: 20,
                      ),
                      onPressed: (() {}),
                    ),
                    IconButton(
                      icon: const Icon(
                        CupertinoIcons.shopping_cart,
                        color: Colors.white,
                        size: 20,
                      ),
                      onPressed: (() {}),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 20,
                      ),
                      onPressed: (() {}),
                    ),
                    IconButton(
                      icon: const Icon(
                        CupertinoIcons.settings,
                        color: Colors.white,
                        size: 20,
                      ),
                      onPressed: (() {}),
                    ),
                  ]),
            ),
          ),
        ),
      ),
      body: PageView(
        controller: myPage,
        children: const [
          StartPage(),
          OrderPage(),
        ],
      ),
    );
  }
}
