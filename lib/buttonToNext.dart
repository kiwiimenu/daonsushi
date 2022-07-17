// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:daonsushi/itemContainer.dart';
import 'package:daonsushi/verticalviewpage.dart';

TextButton nextPageButton(context, category place, String name) {
  return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        shadowColor: const Color.fromARGB(0, 255, 255, 255),
        surfaceTintColor: const Color.fromARGB(0, 255, 255, 255),
        primary: const Color.fromARGB(0, 255, 255, 255),
        onSurface: const Color.fromARGB(0, 255, 255, 255),
        splashFactory: NoSplash.splashFactory,
      ),
      child: Row(
        children: [
          Container(
            // color: Colors.orange,
            height: 60,
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.fromLTRB(25, 0, 0, 0),
            child: Text(name,
                style: const TextStyle(
                    fontFamily: "SFBold",
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black)),
          ),
          const Icon(
            CupertinoIcons.chevron_forward,
            color: Colors.black,
          ),
        ],
      ),
      onPressed: () {
        Navigator.push(
          context,
          PageRouteBuilder(
              pageBuilder: (_, __, ___) =>
                  verticalViewPage(context, place, name),
              transitionDuration: const Duration(milliseconds: 0),
              reverseTransitionDuration: const Duration(milliseconds: 0)),
          // MaterialPageRoute(
          //     builder: (context) => verticalViewPage(context, place, name)),
        );
      });
}
