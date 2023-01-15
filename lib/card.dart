import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget card1(
  imgName,
  foodName,
) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(32),
    child: Container(
      height: 220,
      width: 160,
      color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            'assets/$imgName.jpeg',
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            child: Container(
              height: 45,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '$foodName',

                      // style: textTheme.headline1!
                      //     .copyWith(fontSize: 20, color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    const Icon(
                      CupertinoIcons.money_dollar,
                      size: 26,
                      color: Colors.black,
                    ),
                    const Text(
                      '28',
                      // style: textTheme.headline1!
                      //     .copyWith(fontSize: 22, color: Colors.black),
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

Widget card2(
  imgName,
  foodName,
) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(32),
    child: Container(
      height: 180,
      width: 160,
      color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            'assets/$imgName.jpeg',
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            child: Container(
              height: 45,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '$foodName',

                      // style: textTheme.headline1!
                      //     .copyWith(fontSize: 20, color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    const Icon(
                      CupertinoIcons.money_dollar,
                      size: 26,
                      color: Colors.black,
                    ),
                    const Text(
                      '28',
                      // style: textTheme.headline1!
                      //     .copyWith(fontSize: 22, color: Colors.black),
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
