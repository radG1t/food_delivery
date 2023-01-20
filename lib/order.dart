import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/myOrder.dart';
import 'package:food_delivery/startPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_delivery/card.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  get myPage => null;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    String? foodName;
    String? imgName;
    String? price;

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
        padding: const EdgeInsets.fromLTRB(15, 18, 15, 2),
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
            //----------cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card1('fries', 'Fries', '8'),
                Card2('pizza', 'burger', '18.5'),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card2('burger', 'Burger', '12'),
                Card1('pizza', 'Pizza', '22.5'),
              ],
            ),
          ],
        ),
      ),
      //-----navigator
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
                      onPressed: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const StartPage())));
                      }),
                    ),
                    IconButton(
                      icon: const Icon(
                        CupertinoIcons.shopping_cart,
                        color: Colors.white,
                        size: 20,
                      ),
                      onPressed: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyOrder(),
                            ));
                      }),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 20,
                      ),
                      onPressed: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OrderPage()));
                      }),
                    ),
                    IconButton(
                      icon: const Icon(
                        CupertinoIcons.settings,
                        color: Colors.white,
                        size: 20,
                      ),
                      onPressed: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OrderPage()),
                        );
                      }),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
