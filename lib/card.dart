import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget card1(
  imgName,
  foodName,
  price,
) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(32),
    child: Container(
      height: 220,
      width: 160,
      color: Colors.yellow.shade900,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/$imgName.jpeg',
            fit: BoxFit.fill,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              height: 45,
              width: 160,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('$foodName',
                        style:
                            GoogleFonts.lora(fontSize: 20, color: Colors.grey)),
                    const SizedBox(
                      width: 25,
                    ),
                    const Icon(
                      CupertinoIcons.money_dollar,
                      size: 26,
                      color: Colors.black,
                    ),
                    Text(
                      '$price',
                      style: GoogleFonts.lora(fontSize: 20, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget card2(imgName, foodName, price) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(32),
    child: Container(
      height: 180,
      width: 160,
      color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        /* **positioned && stack *** */
        children: [
          Image.asset(
            'assets/$imgName.jpeg',
            fit: BoxFit.cover,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              height: 45,
              width: 160,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '$foodName',
                      style: GoogleFonts.lora(fontSize: 18, color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    const Icon(
                      CupertinoIcons.money_dollar,
                      size: 24,
                      color: Colors.black,
                    ),
                    Text(
                      '$price',
                      style: GoogleFonts.lora(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
