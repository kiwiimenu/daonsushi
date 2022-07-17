// ignore_for_file: prefer_interpolation_to_compose_strings, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:daonsushi/details.dart';

Scaffold generateDetailsPage(context, String name, String price) {
  return Scaffold(
      backgroundColor: Colors.white,
      body: CupertinoScrollbar(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Stack(
              children: [
                Container(
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/" + name + ".jpeg",
                        ),
                        fit: BoxFit.fill,
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      backgroundColor: Colors.white,
                      elevation: 0,
                      hoverColor: Colors.white,
                      hoverElevation: 0,
                      focusElevation: 0,
                      highlightElevation: 0,
                      child: Icon(
                        CupertinoIcons.back,
                        color: Colors.grey[850],
                        size: 30.0,
                      ),
                    ))
              ],
            ),
            Container(
              // height: 110,
              alignment: Alignment.topLeft,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 1,
                      offset: const Offset(0, 1)),
                ],
                color: Colors.white,
              ),
              child: Column(children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: Text(
                        name,
                        style: TextStyle(
                            fontFamily: "SFBold",
                            fontWeight: FontWeight.bold,
                            fontSize: 36,
                            color: Colors.black),
                        textAlign: TextAlign.left,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      price,
                      style: TextStyle(
                          fontFamily: "SFBold",
                          fontWeight: FontWeight.normal,
                          fontSize: 24,
                          color: Color.fromARGB(255, 0, 0, 0)),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ]),
            ),
            Container(
              child: generateDetails(name, context),
            ),
          ]),
        ),
      ));
}
