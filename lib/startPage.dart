import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 120),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    child: Image(
                      image: AssetImage(
                        'assets/burger.jpeg',
                      ),
                      fit: BoxFit.fitHeight,
                      height: 500,
                    ),
                  ),
                ),
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
