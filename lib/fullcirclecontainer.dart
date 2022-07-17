import 'package:flutter/material.dart';
import 'package:daonsushi/circleitems.dart';

Column fullCircle(
    double w, String itemname, String price, BuildContext context) {
  return Column(
    children: [
      circleitemContainer(w, itemname, price, context),
      Text(
        itemname,
        style: const TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 15,
            fontFamily: "SFBold",
            color: Colors.black),
      ),
    ],
  );
}
