// ignore_for_file: prefer_interpolation_to_compose_strings, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:daonsushi/details_page.dart';

GestureDetector circleitemContainer(
    double w, String itemname, String price, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                generateDetailsPage(context, itemname, price)),
      );
    },
    child: Container(
      height: 70,
      width: 185,
      margin: const EdgeInsets.fromLTRB(0, 25, 0, 15),
      decoration: defaultboxdecoration(itemname),
    ),
  );
}

BoxDecoration defaultboxdecoration(String itemnumber) {
  return BoxDecoration(
    shape: BoxShape.circle,
    boxShadow: [
      BoxShadow(
          color: Color.fromARGB(255, 9, 9, 9).withOpacity(0.1),
          blurRadius: 3,
          spreadRadius: 3,
          offset: const Offset(0, 0.1)),
    ],
    image: DecorationImage(
      image: AssetImage(
        "assets/" + itemnumber + ".jpeg",
      ),
      fit: BoxFit.cover,
    ),
  );
}
