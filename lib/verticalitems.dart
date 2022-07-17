// ignore_for_file: prefer_interpolation_to_compose_strings, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:daonsushi/details_page.dart';

GestureDetector verticalItemContainer(
    String itemname, String price, BuildContext context) {
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
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 9, 9, 9).withOpacity(0.1),
                blurRadius: 5,
                spreadRadius: 3,
                offset: const Offset(0, 0.1)),
          ],
          color: Colors.white,
        ),
        width: 345,
        height: 150,
        // color: Colors.grey,
        margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
        child: Row(children: [
          Container(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
              // height: 150,
              width: 150,
              // color: Colors.blue,
              alignment: Alignment.topLeft,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        itemname,
                        style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                            fontFamily: "SFBold",
                            height: 1.1,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 70),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        price,
                        style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                            fontFamily: "SFBold",
                            color: Color.fromARGB(255, 131, 131, 131)),
                      ),
                    )
                  ])),
          Container(
            height: 150,
            width: 195,
            decoration: defaultboxdecoration(itemname),
          ),
        ]),
        // child: Row(
        //   children: [
        //     Container(
        //       color: Colors.blue,
        //       // padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
        //       // width: 100,
        //       // // height: 60,
        //       // child: Column(
        //       //   children: [
        //       //     Flexible(
        //       //       child: Text(
        //       //         itemname,
        //       //         style: const TextStyle(
        //       //             fontWeight: FontWeight.normal,
        //       //             fontSize: 15,
        //       //             fontFamily: "SFBold",
        //       //             color: Colors.black),
        //       //       ),
        //       //     ),
        //       //     Container(
        //       //       margin: EdgeInsets.only(top: 70),
        //       //       alignment: Alignment.bottomLeft,
        //       //       child: Flexible(
        //       //         child: Text(
        //       //           price,
        //       //           style: const TextStyle(
        //       //               fontWeight: FontWeight.normal,
        //       //               fontSize: 15,
        //       //               fontFamily: "SFBold",
        //       //               color: Color.fromARGB(255, 131, 131, 131)),
        //       //         ),
        //       //       ),
        //       //     )
        //       //   ],
        //       // ),
        //     ),
        //     // Container(
        //     //   // margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        //     //   decoration: defaultboxdecoration(itemname),
        //     // ),
        //   ],
        // ))
        // padding: const EdgeInsets.only(left: 50),

        // decoration: defaultboxdecoration(itemname),
        // child: Center(
        //   child: Container(
        //     alignment: Alignment.centerLeft,
        //     margin: const EdgeInsets.only(top: 90),
        //     padding: const EdgeInsets.all(10),
        //     decoration: const BoxDecoration(
        //       color: Colors.white,
        //       borderRadius: BorderRadius.only(
        //           bottomRight: Radius.circular(10.0),
        //           bottomLeft: Radius.circular(10.0)),
        //     ),
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Flexible(
        //           child: Text(
        //             itemname,
        //             style: const TextStyle(
        //                 fontWeight: FontWeight.normal,
        //                 fontSize: 15,
        //                 fontFamily: "SFBold",
        //                 color: Colors.black),
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        // )),
      ));
}

BoxDecoration defaultboxdecoration(String itemnumber) {
  return BoxDecoration(
    // color: Colors.black,
    borderRadius: const BorderRadius.only(
        topRight: Radius.circular(10), bottomRight: Radius.circular(10)),

    // boxShadow: [
    //   BoxShadow(
    //       color: Color.fromARGB(255, 9, 9, 9).withOpacity(0.1),
    //       blurRadius: 3,
    //       spreadRadius: 3,
    //       offset: const Offset(0, 0.1)),
    // ],
    image: DecorationImage(
      image: AssetImage(
        "assets/" + itemnumber + ".jpeg",
      ),
      fit: BoxFit.cover,
    ),
  );
}
