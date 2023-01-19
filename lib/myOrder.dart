import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/card.dart';
import 'package:food_delivery/order.dart';
import 'package:google_fonts/google_fonts.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade900,
        elevation: 0,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          IconButton(
            icon: const Icon(CupertinoIcons.back),
            onPressed: (() {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const OrderPage())));
            }),
          ),
          const Text('My order'),
          const Icon(CupertinoIcons.ellipsis_vertical)
        ]),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Center(
                child: card3(),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    'Details',
                    style: GoogleFonts.lora(fontSize: 18, color: Colors.white),
                  ),
                  const Expanded(child: SizedBox(width: double.infinity)),
                  Text(
                    'see more',
                    style: GoogleFonts.lora(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                //---left cards
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              height: 120,
                              width: 80,
                              color: const Color.fromARGB(255, 79, 37, 194),
                              child: const Text('bie eiki ouch dord'),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              height: 120,
                              width: 80,
                              color: Colors.white,
                              child: const Text('bie eiki ouch dord'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          width: 170,
                          height: 110,
                          //    height: double.maxFinite,
                          color: Color.fromARGB(223, 67, 64, 73),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Delivery adress',
                                  style: GoogleFonts.lora(
                                      fontSize: 12,
                                      color:
                                          Color.fromARGB(255, 141, 137, 137)),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  '6391 Elgin St.Celina, Delaware 10299',
                                  style: GoogleFonts.lora(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  //---right card
                  Card4(),
                ],
              )
            ]),
      ),
    );
  }
}
