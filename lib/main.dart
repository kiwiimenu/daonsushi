// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, depend_on_referenced_packages, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers

import 'package:daonsushi/setup.dart';
import 'package:flutter/material.dart';
import 'package:daonsushi/itemContainer.dart';
import 'package:daonsushi/items.dart';
import 'package:carousel_slider/carousel_slider.dart';

category app = app;
category ssr = ssr;
category ss = ss;
category lbc = lbc;
category dbc = dbc;
category tryk = tryk;
category dnbr = dnbr;
category udn = udn;
category ykdn = ykdn;
category vgcr = vgcr;
category spclrl = spclrl;
category cscrl = cscrl;
category drgrll = drgrll;
category splrll = splrll;
category rllcmb = rllcmb;
category sscmb = sscmb;
category cmbspl = cmbspl;
category prtytry = prtytry;

List<Row> appet = [];
List<Row> sldsprc = [];
List<Row> salmnsushi = [];
List<Row> lnchbxcmb = [];
List<Row> dnbxcmb = [];
List<Row> tryak = [];
List<Row> dnbri = [];
List<Row> udon = [];
List<Row> ykudn = [];
List<Row> vegeclsicrll = [];
List<Row> spcyclrll = [];
List<Row> clscrll = [];
List<Row> drgnrll = [];
List<Row> spclrll = [];
List<Row> rllcmbo = [];
List<Row> ssmshicmb = [];
List<Row> cmbspcl = [];
List<Row> ptytry = [];

void main() {
  runApp(const MyApp());
  createRow();
  // generateDetails();;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daon Sushi',
      theme: ThemeData(
        primarySwatch: Colors.red,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      home: const MyHomePage(title: 'Top Bar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _current1 = 0;
  int _current2 = 0;
  int _current3 = 0;
  int _current4 = 0;
  int _current5 = 0;
  int _current6 = 0;
  int _current7 = 0;
  int _current8 = 0;
  int _current9 = 0;
  int _current10 = 0;
  int _current11 = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    setupCategory();

    return WillPopScope(
        onWillPop: () async {
          if (Navigator.of(context).userGestureInProgress) {
            return false;
          } else {
            return true;
          }
        },
        child: Scaffold(
            body: Center(
                child: Scaffold(
                    backgroundColor: Color.fromARGB(255, 35, 35, 35),
                    appBar: AppBar(
                      shadowColor: Colors.grey.withOpacity(0.2),
                      elevation: 3,
                      toolbarHeight: 90,
                      backgroundColor: Color.fromARGB(255, 35, 35, 35),
                      flexibleSpace: Center(
                        child: Container(
                          alignment: Alignment.center,
                          width: 400,
                          height: 60,
                          child: Image.asset('assets/logo.png'),
                        ),
                      ),
                    ),
                    body: SingleChildScrollView(
                        child: Column(children: [
                      Container(
                          child: makeCategory(context, app, "Appetizers", 1)),
                      Container(
                        padding: EdgeInsets.only(
                            left: 35, right: 35, top: 15, bottom: 15),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: appet,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 55,
                        child: Text(
                          "Salad/Soup/Rice",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 35, right: 35, top: 15, bottom: 15),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: sldsprc,
                        ),
                      ),
                      Container(
                        //start
                        alignment: Alignment.center,

                        height: 55,
                        child: Text(
                          "Salmon Sashimi",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 35, right: 35, top: 15, bottom: 15),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: salmnsushi,
                        ),
                      ), //end
                      Container(
                          child: makeCategory(context, lbc,
                              "Lunch Box Combo (served until 4pm)", 2)),
                      Container(
                        padding: EdgeInsets.only(
                            left: 35, right: 35, top: 15, bottom: 15),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: lnchbxcmb,
                        ),
                      ),
                      Container(
                        //start
                        alignment: Alignment.center,

                        height: 55,
                        child: Text(
                          "Dinner Box Combo",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 35, right: 35, top: 15, bottom: 15),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: dnbxcmb,
                        ),
                      ), //end
                      Container(
                          child: makeCategory(context, tryk, "Teriyaki", 3)),
                      Container(
                        padding: EdgeInsets.only(
                            left: 35, right: 35, top: 15, bottom: 15),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: tryak,
                        ),
                      ),
                      Container(
                          child: makeCategory(context, dnbr, "Donburi", 4)),
                      Container(
                        padding: EdgeInsets.only(
                            left: 35, right: 35, top: 15, bottom: 15),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: dnbri,
                        ),
                      ),
                      Container(child: makeCategory(context, udn, "Udon", 5)),
                      Container(
                        padding: EdgeInsets.only(
                            left: 35, right: 35, top: 15, bottom: 15),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: udon,
                        ),
                      ),
                      Container(
                        //start
                        alignment: Alignment.center,

                        height: 55,
                        child: Text(
                          "Yaki Udon",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 35, right: 35, top: 15, bottom: 15),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: ykudn,
                        ),
                      ), //end
                      Container(
                          child: makeCategory(
                              context, vgcr, "Vege Roll 6pcs", 6)),
                      Container(
                        padding: EdgeInsets.only(
                            left: 35, right: 35, top: 15, bottom: 15),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: vegeclsicrll,
                        ),
                      ),
                      Container(
                          child: makeCategory(
                              context, spclrl, "Spicy Roll 6pcs", 7)),
                      Container(
                        padding: EdgeInsets.only(
                            left: 35, right: 35, top: 15, bottom: 15),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: spcyclrll,
                        ),
                      ),
                      Container(
                          child:
                              makeCategory(context, cscrl, "Classic Roll 6pcs", 8)),
                      Container(
                        padding: EdgeInsets.only(
                            left: 35, right: 35, top: 15, bottom: 15),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: clscrll,
                        ),
                      ),
                      Container(
                          child:
                              makeCategory(context, drgrll, "Dragon Roll", 9)),
                      Container(
                        padding: EdgeInsets.only(
                            left: 35, right: 35, top: 15, bottom: 15),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: drgnrll,
                        ),
                      ),
                      Container(
                          child: makeCategory(
                              context, splrll, "Special Roll (8-10 pcs)", 10)),
                      Container(
                        padding: EdgeInsets.only(
                            left: 35, right: 35, top: 15, bottom: 15),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: spclrll,
                        ),
                      ),
                      Container(
                        //start
                        alignment: Alignment.center,

                        height: 55,
                        child: Text(
                          "Roll Combo",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 35, right: 35, top: 15, bottom: 15),
                        width: MediaQuery.of(context).size.width,
                        child: Column(children: rllcmbo),
                      ), //end
                      Container(
                          child: makeCategory(
                              context, sscmb, "Sashimi and Sushi Combo", 11)),
                      Container(
                        padding: EdgeInsets.only(
                            left: 35, right: 35, top: 15, bottom: 15),
                        width: MediaQuery.of(context).size.width,
                        child: Column(children: ssmshicmb),
                      ),
                      Container(
                        //start
                        alignment: Alignment.center,
                        height: 55,
                        child: Text(
                          "Combo Special",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 35, right: 35, top: 15, bottom: 15),
                        width: MediaQuery.of(context).size.width,
                        child: Column(children: cmbspcl),
                      ), //end
                      Container(
                        //start
                        alignment: Alignment.center,

                        height: 55,
                        child: Text(
                          "Party Tray",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 35, right: 35, top: 15, bottom: 15),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: ptytry,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ]))))));
  }

  void setupCategory() {
    app = category([
      itemContainer("Edamame", "\$ 5.95 ", context),
      itemContainer("Agedashi Tofu", "\$ 6.95 ", context),
      itemContainer("Sashimi Appetizer", "\$ 10.95 ", context),
      itemContainer("Shrimp Tempura", "\$ 11.95 ", context),
      itemContainer("Sushi Appetizer", "\$ 10.95 ", context),
      itemContainer("Tempura Mix", "\$ 12.95 ", context),
    ]);
    lbc = category([
      itemContainer("Bulgogi Lunch Box", "\$ 13.95 ", context),
      itemContainer("Sashimi and Rolls", "\$ 14.95 ", context),
    ]);
    tryk = category([
      itemContainer("Beef Teriyaki", "\$ 16.95 ", context),
    ]);
    dnbr = category([
      itemContainer("Chicken Donburi", "\$ 11.95 ", context),
      itemContainer("Heh Dup Bap", "\$ 16.95 ", context),
    ]);
    udn = category([
      itemContainer("Seafood Udon", "\$ 11.95 ", context),
      itemContainer("Tempura Udon", "\$ 16.95 ", context),
    ]);
    vgcr = category([
      itemContainer("Avocado Roll", "\$ 6.95 ", context),
      itemContainer("Cucumber Roll", "\$ 5.95 ", context),
    ]);
    spclrl = category([
      itemContainer("Spicy Salmon Roll", "\$ 6.95 ", context),
    ]);
    cscrl = category([
      itemContainer("California Roll", "\$ 5.95 ", context),
    ]);
    drgrll = category([
      itemContainer("Red Dragon", "\$ 15.95 ", context),
    ]);
    splrll = category([
      itemContainer("Dynamite Roll", "\$ 13.95 ", context),
      itemContainer("Hawaiian Roll", "\$ 13.95 ", context),
      itemContainer("Spider Roll", "\$ 16.95 ", context),
    ]);
    sscmb = category([
      itemContainer("Sashimi and Sushi", "\$ 12.95 ", context),
    ]);
  }

  Container makeCategory(
      context, category cat, String categoryName, int _current) {
    return Container(
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Container(
            margin: EdgeInsets.only(top: 35),
            alignment: Alignment.center,
            child: Text(
              categoryName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 2,
                    viewportFraction: 0.8,
                    // aspectRatio: 2,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        if (_current == 1) {
                          _current1 = index;
                        } else if (_current == 2) {
                          _current2 = index;
                        } else if (_current == 3) {
                          _current3 = index;
                        } else if (_current == 4) {
                          _current4 = index;
                        } else if (_current == 5) {
                          _current5 = index;
                        } else if (_current == 6) {
                          _current6 = index;
                        } else if (_current == 7) {
                          _current7 = index;
                        } else if (_current == 8) {
                          _current8 = index;
                        } else if (_current == 9) {
                          _current9 = index;
                        } else if (_current == 10) {
                          _current10 = index;
                        } else if (_current == 11) {
                          _current11 = index;
                        }
                      });
                    },
                  ),
                  items: cat.returnList(),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: cat.returnList().asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 5,
                  height: 5,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Color.fromARGB(255, 114, 114, 114))
                          .withOpacity(
                              // _current1 == entry.key ? 0.9 : 0.4
                              _current == 1
                                  ? _current1 == entry.key
                                      ? 0.9
                                      : 0.4
                                  : _current == 2
                                      ? _current2 == entry.key
                                          ? 0.9
                                          : 0.4
                                      : _current == 3
                                          ? _current3 == entry.key
                                              ? 0.9
                                              : 0.4
                                          : _current == 4
                                              ? _current4 == entry.key
                                                  ? 0.9
                                                  : 0.4
                                              : _current == 5
                                                  ? _current5 == entry.key
                                                      ? 0.9
                                                      : 0.4
                                                  : _current == 6
                                                      ? _current6 == entry.key
                                                          ? 0.9
                                                          : 0.4
                                                      : _current == 7
                                                          ? _current7 ==
                                                                  entry.key
                                                              ? 0.9
                                                              : 0.4
                                                          : _current == 8
                                                              ? _current8 ==
                                                                      entry.key
                                                                  ? 0.9
                                                                  : 0.4
                                                              : _current == 9
                                                                  ? _current9 ==
                                                                          entry
                                                                              .key
                                                                      ? 0.9
                                                                      : 0.4
                                                                  : _current ==
                                                                          10
                                                                      ? _current10 ==
                                                                              entry
                                                                                  .key
                                                                          ? 0.9
                                                                          : 0.4
                                                                      : _current ==
                                                                              11
                                                                          ? _current11 == entry.key
                                                                              ? 0.9
                                                                              : 0.4
                                                                          : 0.4)),
                ),
              );
            }).toList(),
          )
        ]));
  }

  Column makeColumn(List<Row> r) {
    return Column(
      children: r,
    );
  }
}
