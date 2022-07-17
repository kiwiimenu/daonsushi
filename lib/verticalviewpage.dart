// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:daonsushi/buttonToBack.dart';
import 'package:daonsushi/itemContainer.dart';

Scaffold verticalViewPage(context, category section, String sectionName) {
  return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shadowColor: Colors.grey.withOpacity(0.2),
        elevation: 3,
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        flexibleSpace: Container(
          alignment: Alignment.bottomLeft,
          margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
          color: Colors.white,
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Container(
                  width: 60,
                  height: 60,
                  child: Image.asset('assets/logo.png'),
                )),
              ]),
        ),
      ),
      body: SingleChildScrollView(
          child: Center(child: makePage(context, sectionName, section))));
}

Column makePage(context, String sectionName, category section) {
  List<Widget> temp = [];
  temp.add(Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [buttonToBack(sectionName, context)],
  ));
  temp.addAll(section.returnList());
  temp.add(const SizedBox(
    height: 20,
  ));
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: temp,
  );
}
