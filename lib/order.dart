import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      drawer: const Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: Icon(
                  CupertinoIcons.line_horizontal_3,
                  color: Colors.grey.shade800,
                  size: 28,
                ));
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                height: 40,
                width: 40,
                color: Colors.black,
                child: const Center(
                  child: Icon(
                    CupertinoIcons.person,
                    size: 22,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 18, 15, 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // text
            Text('What would',
                style: GoogleFonts.lora(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                )),
            Row(
              children: [
                Text(
                  'you',
                  style: GoogleFonts.lora(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  ' like to order?',
                  style: GoogleFonts.lora(
                    color: Colors.grey.shade800,
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            //searchBox
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                height: 45,
                color: Colors.grey.shade300,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Search food',
                          style: textTheme.headline1!
                              .copyWith(fontSize: 12, color: Colors.grey)),
                      const Icon(CupertinoIcons.search),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Container(
                    height: 220,
                    width: 160,
                    color: Colors.yellow,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/burger.jpg',
                          //   fit: BoxFit.,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            height: 45,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Burger',
                                      style: textTheme.headline1!.copyWith(
                                          fontSize: 20, color: Colors.grey)),
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  const Icon(
                                    CupertinoIcons.money_dollar,
                                    size: 26,
                                    color: Colors.black,
                                  ),
                                  Text('28',
                                      style: textTheme.headline1!.copyWith(
                                          fontSize: 22, color: Colors.black)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Container(
                    height: 180,
                    width: 160,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Container(
                    height: 180,
                    width: 160,
                    color: Colors.red,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Container(
                    height: 220,
                    width: 160,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [],
      // ),
    );
  }
}
// hamed qoli nasab ui/ux
