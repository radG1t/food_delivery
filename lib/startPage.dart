import 'package:flutter/material.dart';
import 'package:food_delivery/order.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 120),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PageView(
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  //controller: controller,
                  children: [
                    Container(
                      color: Colors.red,
                    ),
                    Container(
                      color: Colors.lightBlue,
                    ),
                    Container(
                      color: Colors.indigoAccent,
                    ),
                    // Expanded(
                    //   child: ClipRRect(
                    //     borderRadius: BorderRadius.all(
                    //       Radius.circular(100),
                    //     ),
                    //     child: Image(
                    //       image: AssetImage(
                    //         'assets/burger.jpg',
                    //       ),
                    //       fit: BoxFit.fitHeight,
                    //       height: 500,
                    //     ),
                    //   ),
                    // ),
                    // ClipRRect(
                    //   borderRadius: BorderRadius.all(
                    //     Radius.circular(100),
                    //   ),
                    //   child: Image(
                    //     image: AssetImage(
                    //       'assets/burger.jpg',
                    //     ),
                    //     fit: BoxFit.fitHeight,
                    //     height: 500,
                    //   ),
                    // ),
                  ],
                ),
                /*
                const Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                    child:  Image(
                      image: AssetImage(
                        'assets/burger.jpg',
                      ),
                      fit: BoxFit.fitHeight,
                      height: 500,
                    ),
                  ),
                ),  */
                const SizedBox(
                  height: 120,
                ),
                const Text(
                  'Choose your prefrence',
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(
                  height: 14,
                ),
                Text(
                  'What`s your',
                  style: GoogleFonts.lora(
                    color: Colors.black,
                    fontSize: 34,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'favorite Food?',
                  style: GoogleFonts.lora(
                    color: Colors.grey.shade800,
                    fontSize: 34,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(15),
        child: SizedBox(
          width: double.infinity,
          child: FloatingActionButton.extended(
            backgroundColor: Colors.black87,
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OrderPage(),
                  ));
              /*    Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const OrderPage()),
                ),
              );*/
            },
            label: const Text('Get Started'),
          ),
        ),
      ),
    );
  }
}
