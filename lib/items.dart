// ignore_for_file: prefer_interpolation_to_compose_strings, prefer_const_constructors

import 'package:flutter/material.dart';

Container itemContainer(String itemname, String price, BuildContext context) {
  return Container(
      margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
      decoration: defaultboxdecoration(itemname),
      alignment: Alignment.bottomCenter,
      child: Container(
        // margin: const EdgeInsets.all(2),
        child: Container(
          height: 60,
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 40, 40, 40),
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  itemname,
                  style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      fontFamily: "SFBold",
                      color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ));
}

BoxDecoration defaultboxdecoration(String itemnumber) {
  return BoxDecoration(
    // color: Colors.black,
    borderRadius: const BorderRadius.all(Radius.circular(10)),
    boxShadow: [
      BoxShadow(
          color: Color.fromARGB(255, 9, 9, 9).withOpacity(0.1),
          blurRadius: 5,
          spreadRadius: 3,
          offset: const Offset(0, 0.1)),
    ],
    image: DecorationImage(
      image: AssetImage(
        "assets/" + itemnumber + ".jpeg",
      ),
      fit: BoxFit.fitWidth,
    ),
  );
}
