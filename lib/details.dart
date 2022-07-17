// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors
import 'package:flutter/material.dart';

Column generateDetails(String itemName, context) {
  List<Widget> detailsWidgets = [];
  List<String> inData = getData(itemName);

  List<String> titlesList = inData[0].split('+');
  List<String> optList = inData[1].split('+');

  if (titlesList[0] == "") return Column();

  for (int i = 0; i < titlesList.length; i++) {
    // detailsWidgets.add(SizedBox(
    //   height: 10,
    // ));
    detailsWidgets.add(Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        color: Color.fromARGB(246, 246, 246, 246),
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            titlesList[i],
            style: TextStyle(
                fontFamily: "SFBold",
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: Colors.black),
            textAlign: TextAlign.left,
          ),
        )));
    // detailsWidgets.add(SizedBox(
    //   height: 10,
    // ));
    List<String> individualopt = optList[i].split(',');
    for (int j = 0; j < individualopt.length; j++) {
      detailsWidgets.add(Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          // color: Color.fromARGB(246, 246, 246, 246),
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              individualopt[j],
              style: TextStyle(
                  fontFamily: "SFBold",
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  color: Colors.black),
              textAlign: TextAlign.left,
            ),
          )));
    }
  }
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start, children: detailsWidgets);
}

List<String> getData(String itemName) {
  Map<String, String> storage = {};

  storage["Okra1"] = "Spice Levels+Topping Options+Protein Choice";
  storage["Okra2"] =
      "No Spicy,Less Spicy,Spicy,Extra Spicy+Add Red Cab,Add Let Shred,Add Cucum Shred,Add Gr On+Minced Pork,Grilled Hot Pep";
  storage["Szechuan style beef brisket Noodle1"] =
      "Noodle Type+Spice Level+Numbing Level+Remove TOPPINGS";
  storage["Szechuan style beef brisket Noodle2"] =
      "Egg noodle,Sweet potato noodles,Rice noodles+No Spicy,Less Spicy,Spicy,Extra Spicy+No Numbing,Less Numbing,Numbing,Extra NUmbing+Remove Cilantro,Remove Green Onion,Remove Garlic";
  storage["House special marinated pork belly Noodle1"] =
      "Noodle Type+Spice Level+Numbing Level+Remove TOPPINGS";
  storage["House special marinated pork belly Noodle2"] =
      "Egg noodle,Sweet potato noodles,Rice noodles+No Spicy,Less Spicy,Spicy,Extra Spicy+No Numbing,Less Numbing,Numbing,Extra Numbing+Remove Cilantro,Remove Green Onion,Remove Garlic";
  storage["Soybean pork intestine1"] =
      "Noodle Type+Spice Level+Numbing Level+Remove TOPPINGS";
  storage["Soybean pork intestine2"] =
      "Egg noodle,Sweet potato noodles,Rice noodles+No Spicy,Less Spicy,Spicy,Extra Spicy+No Numbing,Less Numbing,Numbing,Extra Numbing+Remove Cilantro,Remove Green Onion,Remove Garlic";
  storage["Wonton soup1"] =
      "Upgrade Wonton Size+Spice Level+Numbing Level+Remove TOPPINGS";
  storage["Wonton soup2"] =
      "Large Wonton (\$3.00)+No Spicy,Less Spicy,Spicy,Extra Spicy+No Numbing,Less Numbing,Numbing,Extra NUmbing+Remove Cilantro,Remove Green Onion,Remove Garlic";
  storage["Wonton in hot & spicy soup1"] =
      "Upgrade Wonton Size+Spice Level+Numbing Level+Remove TOPPINGS";
  storage["Wonton in hot & spicy soup2"] =
      "Large Wonton (\$3.00)+No Spicy,Less Spicy,Spicy,Extra Spicy+No Numbing,Less Numbing,Numbing,Extra Numbing+Remove Cilantro,Remove Green Onion,Remove Garlic";

  List<String> tmp = [];

  tmp.add(storage["${itemName}1"] ?? "");
  tmp.add(storage["${itemName}2"] ?? "");

  return tmp;
}
