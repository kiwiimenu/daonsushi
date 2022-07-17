// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextButton buttonToBack(String sectionName, context) {
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
          const Icon(
            CupertinoIcons.chevron_back,
            color: Colors.black,
          ),
          Container(
            // color: Colors.orange,
            height: 60,
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.fromLTRB(25, 0, 0, 0),
            child: Text(sectionName,
                style: const TextStyle(
                    fontFamily: "SFBold",
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black)),
          ),
        ],
      ),
      onPressed: () {
        Navigator.pop(context);
      });
}
