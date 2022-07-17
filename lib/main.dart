// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:daonsushi/buttonToNext.dart';
import 'package:daonsushi/fullcirclecontainer.dart';
import 'package:daonsushi/itemContainer.dart';
import 'package:daonsushi/items.dart';
import 'package:daonsushi/verticalitems.dart';
import 'package:carousel_slider/carousel_slider.dart';

category snrhlth = snrhlth;
category chldhlth = chldhlth;
category hbs = hbs;
category groc = groc;
category ginseng = ginseng;
category vtmns = vtmns;
category jntsp = jntsp;
category ntlrmd = ntlrmd;
category cnds = cnds;
category fshoil = fshoil;
category flxsdgarlc = flxsdgarlc;
category mnshlth = mnshlth;
category wmnhlth = wmnhlth;
category skncrprd = skncrprd;
category babyprd = babyprd;
category sfd = sfd;

category snrhlthVert = snrhlthVert;
category chldhlthVert = chldhlthVert;
category hbsVert = hbsVert;
category grocVert = grocVert;
category ginsengVert = ginsengVert;
category vtmnsVert = vtmnsVert;
category jntspVert = jntspVert;
category ntlrmdVert = ntlrmdVert;
category cndsVert = cndsVert;
category fshoilVert = fshoilVert;
category flxsdgarlcVert = flxsdgarlcVert;
category mnshlthVert = mnshlthVert;
category wmnhlthVert = wmnhlthVert;
category skncrprdVert = skncrprdVert;
category babyprdVert = babyprdVert;
category sfdVert = sfdVert;

void main() {
  runApp(const MyApp());
  // generateDetails();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'N&B Health',
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
  int _current12 = 0;
  int _current13 = 0;
  int _current14 = 0;
  int _current15 = 0;
  int _current16 = 0;
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
                        child: Column(children: [
                      // Container(
                      //     // color: Colors.blue,
                      //     child: Column(children: [
                      //   nextPageButton(context, appetizersVert, "APPETIZERS"),
                      //   Container(
                      //     height: 150,
                      //     child: ListView(scrollDirection: Axis.horizontal,
                      //         // physics: const PageScrollPhysics(),
                      //         children: [appetizers.returnRow()]),
                      //   )
                      // ])),
                      Container(
                          child: makeCategory(context, snrhlthVert, snrhlth,
                              "Senior's Health", 1)),
                      Container(
                          child: makeCategory(context, chldhlthVert, chldhlth,
                              "Children's Health", 2)),
                      Container(
                          child:
                              makeCategory(context, hbsVert, hbs, "Herbs", 3)),
                      Container(
                          child: makeCategory(
                              context, grocVert, groc, "Groceries", 4)),
                      Container(
                          child: makeCategory(
                              context, ginsengVert, ginseng, "Ginseng", 5)),
                      Container(
                          child: makeCategory(
                              context, vtmnsVert, vtmns, "Vitamins", 6)),
                      Container(
                          child: makeCategory(
                              context, jntspVert, jntsp, "Joint Support", 7)),
                      Container(
                          child: makeCategory(context, ntlrmdVert, ntlrmd,
                              "Natural Remedies", 8)),
                      Container(
                          child: makeCategory(context, cndsVert, cnds,
                              "Cleaning & Digestive System", 9)),
                      Container(
                          child: makeCategory(
                              context, fshoilVert, fshoil, "Fish Oil", 10)),
                      Container(
                          child: makeCategory(context, flxsdgarlcVert,
                              flxsdgarlc, "Flaxseed & Garlic", 11)),
                      Container(
                          child: makeCategory(context, mnshlthVert, mnshlth,
                              "Men's Health", 12)),
                      Container(
                          child: makeCategory(context, wmnhlthVert, wmnhlth,
                              "Women's Health", 13)),
                      Container(
                          child: makeCategory(context, skncrprdVert, skncrprd,
                              "Skin Care Products", 14)),
                      Container(
                          child: makeCategory(context, babyprdVert, babyprd,
                              "Baby Products", 15)),
                      Container(
                          child: makeCategory(
                              context, sfdVert, sfd, "Seafood", 16)),

                      SizedBox(
                        height: 20,
                      )
                    ]))))));
  }

  void setupCategory() {
    // appetizers = category([
    //   fullCircle(MediaQuery.of(context).size.width, "Okra", "\$5.50", context),
    //   fullCircle(MediaQuery.of(context).size.width, "Braised Bean Curd",
    //       "\$5.00", context),
    //   fullCircle(MediaQuery.of(context).size.width, "Salty Crispy Chicken",
    //       "\$5.00", context),
    //   fullCircle(
    //       MediaQuery.of(context).size.width, "Black Fungus", "\$5.00", context),
    // ]);

    snrhlth = category([
      itemContainer(
          "DHA Vegetarian Algae (Docosahexaenoic acid)", "\$26.99", context),
    ]);
    chldhlth = category([
      itemContainer(
          "MapleLife Kids Ca + Mag + Zn (with Vitamin D3)", "\$19.99", context),
      itemContainer("BILL Natural WildBlueBerry Chewables", "\$16.99", context),
      itemContainer("BILL Children's Colostrum Chewables", "\$16.99", context),
      itemContainer("Jamieson Folic Acid (400 mg)", "\$9.99", context),
      itemContainer("Jamieson Curcumin Tumeric (550 mg)", "\$17.99", context),
      itemContainer("Jamieson Gummies Apple Cider Vinegar (Chromium)",
          "\$17.99", context),
      itemContainer("Nordic Natural Children's DNA  (530 mg Omega 1)",
          "\$29.99", context),
      itemContainer(
          "Jamieson Gummies Elderberry Vitamin C +", "\$13.99", context),
      itemContainer("Jamieson Chewable Cold Fighter", "\$16.99", context),
      itemContainer("Jamieson Gummies Multi Vitamins", "\$13.99", context),
      itemContainer("Jamieson Effervescent Natural Orange Vitamin C (1000 mg)",
          "\$5.99", context),
      itemContainer(
          "Jamieson Gummies Tangy Orange (550 mg)", "\$14.99", context),
      itemContainer("Iron Kids Essential Gummies Calcium", "\$10.99", context),
      itemContainer("Omega Alpha Echinacia", "\$13.99", context),
      itemContainer("Omega Alpha Herba Cough", "\$12.99", context),
      itemContainer("Jamieson Organic Echinacea ", "\$15.99", context),
      itemContainer(
          "Jamieson Gummies Orange Lemon Strawberry D", "\$15.99", context),
      itemContainer("Centrum Prenatal DHA", "\$25.99", context),
      itemContainer("Nestle Materna Multivitamins", "\$16.99", context),
      itemContainer("Jamieson Prenatal ", "\$19.99", context),
      itemContainer("Enfomil A+ Baby Formula", "\$35.99", context),
      itemContainer(
          "Enfomil A+ Baby Formula (Eco-Value Pack)", "\$47.99", context),
      itemContainer("Enfomil A+ Toddler", "\$28.99", context),
      itemContainer("Omega Alpha Vitamin D3 Concentrated Kid's drops",
          "\$24.99", context),
      itemContainer("Baby Ddrops Liquid Vitamin D3 ", "\$15.99", context),
      itemContainer("Kids Ddrops Liquid Vitamin D3 ", "\$13.99", context),
      itemContainer("Kids 0-9 Night Syrup", "\$15.99", context),
      itemContainer("Jamieson Probiotic Drops", "\$17.99", context),
      itemContainer("Culturelle Probiotic Kids", "\$25.99", context),
      itemContainer("Sisu U-Cubes Kids Vitamin Gummies", "\$17.99", context),
    ]);
    hbs = category([
      itemContainer("Wedderspoon Manuka Honey", "\$46.99", context),
      itemContainer("Ginseng Powder", "\$25.99", context),
      itemContainer(
          "Flora Flor Essence Dry Herbal Cleanse", "\$35.99", context),
    ]);
    groc = category([
      itemContainer("Pure Maple Syrup Candies", "\$3.99", context),
      itemContainer("Golden Silver Flower Tea", "\$10.00", context),
      itemContainer("Chrysanthemum  Tea", "\$10.00", context),
    ]);
    ginseng = category([
      itemContainer("Ontario Pure Ginseng Main Root (Product of Canada)",
          "\$99.99", context),
      itemContainer("Ontario Pure Ginseng Lateral Root (Product of Canada)",
          "\$75.99", context),
    ]);
    vtmns = category([
      itemContainer("Omega Alpha D3 + K2 Vitamin", "\$25.99", context),
      itemContainer("Jamieson Gummies Multi (for Adults)", "\$17.99", context),
      itemContainer("Flora Gluten-Free Adult's Probiotic", "\$51.99", context),
      itemContainer("Ddrops booster Liquid Vitamin D3", "\$13.99", context),
      itemContainer("Jamieson Vitamin A", "\$7.99", context),
      itemContainer("Jamieson Multi Vitamin and Mineral Supplment (for Kids)",
          "\$11.99", context),
      itemContainer("Jamieson Timed Release Vitamin B ", "\$18.99", context),
      itemContainer("Jamieson Vitamin E (extra strength)", "\$19.99", context),
      itemContainer(
          "Jamieson Probiotic 10 Billion Active Cells", "\$23.99", context),
      itemContainer("Jamieson ProVitamina Vitamin E oil", "\$18.99", context),
      itemContainer(
          "Jamieson Extrastength Probiotic Gummies", "\$23.99", context),
      itemContainer("Jamieson Softgels Vitamin D3", "\$7.99", context),
      itemContainer("Jamieson Vitamin B1 & B2", "\$11.99", context),
      itemContainer("Jamieson Vitamin B12", "\$9.99", context),
      itemContainer("Jamieson Timed Release Vitamin C", "\$15.99", context),
      itemContainer(
          "Jamieson Chewables Juicy White Peach Vitamin C", "\$7.99", context),
      itemContainer("Jamieson  Chewables Strawberry Flavour Vitamin D3",
          "\$7.99", context),
      itemContainer("Jamieson Chewables Juicy Wild Blueberry Vitamin C",
          "\$7.99", context),
      itemContainer("IronKids Essential Gummies Omega 3", "\$15.99", context),
    ]);
    jntsp = category([
      itemContainer("Jamieson Glucosamine Chondroiton MSM (Ultra Strength)",
          "\$27.99", context),
      itemContainer("Jamieson Glucosamine ", "\$21.99", context),
      itemContainer("Organika Premium Liga-Joint", "\$27.99", context),
      itemContainer("Jamieson Vitamin B 50 Complex", "\$13.99", context),
      itemContainer(
          "Jamieson Chewables Berry Complex Vitamin B ", "\$16.99", context),
      itemContainer("BEC OsteoCollagen", "\$25.99", context),
      itemContainer(
          "Natural Factors FlexAble Glucosamine Sulfate", "\$27.99", context),
      itemContainer("Maple Life MaxiFlex Natural Healing & High Potency",
          "\$26.99", context),
      itemContainer("Omega Alpha GlucosaPlex", "\$27.99", context),
      itemContainer("Webber Naturals Vitamin e", "\$26.99", context),
      itemContainer("Jamieson Ultra Stength Vitamin B 100", "\$19.99", context),
      itemContainer("BEC Glucosamine + MSM", "\$17.99", context),
      itemContainer("Organika Blood Sugar Control Vegetarian Capsules",
          "\$29.99", context),
      itemContainer("Organika Goutrin", "\$19.99", context),
      itemContainer("Joint Ease Glucosamine Chondroitin Extra Strength ",
          "\$33.99", context),
      itemContainer("MapleLife Gout Relief", "\$43.99", context),
      itemContainer("Organika Mushroom Extract Reishi", "\$36.99", context),
      itemContainer(
          "Codecol Nanaco Ultimate Calcium Supplement", "\$79.99", context),
      itemContainer("Kirkland Glucosamine Sulfate", "\$29.99", context),
      itemContainer("Osteo Joint Ease for Chronic Pain", "\$32.99", context),
      itemContainer(
          "Kirkland Calcium Plus with Vitamin D3", "\$32.99", context),
      itemContainer(
          "Kirkland Glucosamine Chondroitin & MSM", "\$32.99", context),
    ]);
    ntlrmd = category([
      itemContainer("Essiac Herbal Extract", "\$39.99", context),
      itemContainer("Codeco Liver Protect", "\$38.99", context),
      itemContainer("A Vogel Sinus ", "\$17.99", context),
      itemContainer("A Vogel Allery Relief", "\$17.99", context),
      itemContainer("Organika Bee Propolis", "\$12.99", context),
      itemContainer("Apiario Propolic Glycolic Solution", "\$36.99", context),
      itemContainer(
          "Sunyata Golden Proplic Glycolic Extract", "\$36.99", context),
      itemContainer("Pon Lee Propolis Glycolic Extract", "\$35.99", context),
      itemContainer("Flora Flor Essence Herbal Cleanse", "\$38.99", context),
      itemContainer("MapleLife Gluco Balance Proffesional Herbal Formula",
          "\$27.99", context),
      itemContainer("Jamison Chelated Chromium ", "\$14.99", context),
      itemContainer("BEC Spiruline", "\$35.99", context),
      itemContainer("Alpha Omega Glucolizer", "\$35.99", context),
      itemContainer("BEC Bee Proplis", "\$20.99", context),
      itemContainer("Organika Bee Propolis", "\$26.99", context),
      itemContainer("Organika Reishi Mushroom Extract", "\$20.99", context),
      itemContainer("Flora Pro Essence", "\$37.99", context),
    ]);
    cnds = category([
      itemContainer("Omega Alpha Veggie Fruit Plus", "\$36.99", context),
      itemContainer("Omega Alpha  Anti FlamX", "\$8.99", context),
      itemContainer("Omega Alpha  Resprit", "\$33.99", context),
      itemContainer("Omega Alpha  Liver Plus", "\$27.99", context),
      itemContainer("Jamieson Digestive Enzymes", "\$14.99", context),
      itemContainer("Flora Milk Thistle Plus", "\$14.99", context),
      itemContainer("SISU Milk Thistle Complex", "\$14.99", context),
      itemContainer("Jamieson Milk Thistle ", "\$19.99", context),
      itemContainer("Organika Milk Thistle", "\$24.99", context),
      itemContainer("Organika Chanca Piedra", "\$19.99", context),
      itemContainer("Jamieson Saw Palmetto", "\$25.99", context),
      itemContainer("Jamieson Lycopene Tomato Concentrate", "\$15.99", context),
      itemContainer(
          "Holista Remedites Liquid Softgel Milk Thistle ", "\$35.99", context),
      itemContainer("Codeco Prostacil Maximum Strength", "\$25.99", context),
      itemContainer("Omega Alpha Ultra Probiotic Plus", "\$25.99", context),
      itemContainer("Omega Alpha  Multi-Zyme ", "\$25.99", context),
      itemContainer(
          "Prostate Health Super Prostate Advanced Multi-Ingredient Formula",
          "\$25.99",
          context),
      itemContainer("Omega Alpha  Kidney Plus", "\$23.99", context),
      itemContainer("Omega Alpha Protein Multi Plus ", "\$65.99", context),
    ]);
    fshoil = category([
      itemContainer("BEC Fish Oil Omega 3", "\$15.99", context),
      itemContainer("Webbers Naturals Omega-3 & CoQ10", "\$29.99", context),
      itemContainer("Jamieson Salmon & Fish Oil", "\$16.99", context),
      itemContainer("Flora Udo's Oil Omega 3+6+9 Blend", "\$36.99", context),
      itemContainer("Jamieson Omega-3 Select", "\$17.99", context),
      itemContainer(
          "Jamieson Cod Liver Oil with Vitamin A + D3", "\$12.99", context),
      itemContainer("Kirkland Omega-3 Fish Oil", "\$29.99", context),
      itemContainer(
          "Webber Naturals Triple Strength Omega-3", "\$29.100", context),
      itemContainer("Kirkland Fish Oil Blend", "\$18.99", context),
      itemContainer("Tera Nova Omega 3", "\$25.99", context),
      itemContainer("MapleLife Harp Seal Omega 3", "\$15.99", context),
      itemContainer("Vital Life Heap Seal Oil Omega 3", "\$15.99", context),
      itemContainer("BEC Harp Seal Omega 3", "\$25.99", context),
      itemContainer("Bill Seal Oil Omega 3", "\$15.99", context),
    ]);
    flxsdgarlc = category([
      itemContainer("SISU Co Q10 (100 mg)", "\$28.99", context),
      itemContainer("BEC Cadio Energy Co Q10", "\$25.99", context),
      itemContainer("Kirkland Coenzyme Q10 (200 mg)", "\$44.99", context),
      itemContainer("Kirkland Coenyzme Q10 (100 mg)", "\$29.99", context),
      itemContainer("Omega Alpha LessTerol", "\$37.99", context),
      itemContainer("Jamieson Lecithin", "\$11.99", context),
      itemContainer("Jamieson Odourless Garlic ", "\$16.99", context),
      itemContainer("BEC Lecithin", "\$16.99", context),
      itemContainer("Health Balance Lecithin Natural Source Unbleached",
          "\$16.99", context),
      itemContainer("Jamieson Co Q10 (Extra Strength)", "\$26.99", context),
    ]);
    mnshlth = category([
      itemContainer("Jamieson St. John's Wort", "\$16.99", context),
      itemContainer(
          "Jamieson Fast Dissolving Meltaonin (3 mg)", "\$13.99", context),
      itemContainer("Jamieson Melatonin ", "\$13.99", context),
      itemContainer("Jamieson Selenium", "\$13.99", context),
      itemContainer(
          "Webber Naturals Super Sleep Melatonin", "\$19.99", context),
      itemContainer("Perucian Gold MACA", "\$29.99", context),
      itemContainer("VitaX Revita Capsules", "\$59.99", context),
      itemContainer("BEC Men's Essential (Generation 2)", "\$29.99", context),
      itemContainer("Organika TNT Plus", "\$23.99", context),
      itemContainer("Organika Organic MACA ", "\$33.99", context),
      itemContainer("Omega Alpha Cal-Mag Plus", "\$25.99", context),
      itemContainer("Jamieson Mega Cal Calcium+ D3", "\$12.99", context),
      itemContainer("BEC Liquid Calcium with Vitamin B3", "\$16.99", context),
      itemContainer("Jamieson Calcium Magnesium", "\$12.99", context),
      itemContainer("Jamieson Calcium Magnesium + D3", "\$10.99", context),
      itemContainer("Omega Alpha Lung Flush", "\$28.99", context),
      itemContainer("Centrum Men", "\$29.99", context),
      itemContainer(
          "Jamieson Multi 100% Complete Vitamin (Men)", "\$16.99", context),
      itemContainer("Centrum Men 50+", "\$29.99", context),
      itemContainer(
          "Kirkland Men Multivitamin and Minerals", "\$19.99", context),
    ]);
    wmnhlth = category([
      itemContainer("Organika Hair Plus", "\$25.99", context),
      itemContainer("Jamieson Lutein-z", "\$20.99", context),
      itemContainer("SISU Lutein", "\$24.99", context),
      itemContainer("Omega Alpha Ginkgo Biloba", "\$17.99", context),
      itemContainer("Webber Naturals Ginkgo Biloba", "\$19.99", context),
      itemContainer(
          "Jamieson Bilberry Antioxidant for Eye Health", "\$18.99", context),
      itemContainer("Aronia Blueberry", "\$29.99", context),
      itemContainer("Codeco Omni Eye Care", "\$43.99", context),
      itemContainer("Codeco Multi Forte", "\$19.99", context),
      itemContainer("Centrum Women", "\$29.99", context),
      itemContainer("Jamieson Multi 100% Complete Vitamin (Women 50+)",
          "\$16.99", context),
      itemContainer("Jamieson Multi 100% Complete (Women)", "\$16.99", context),
      itemContainer("Centrum Womens 50+", "\$29.99", context),
      itemContainer("Natural Factors Vitex Regulates", "\$25.99", context),
      itemContainer("Natural Factors Soy Isoflavone ", "\$26.99", context),
      itemContainer("Melgrace (especially for Women)", "\$59.99", context),
      itemContainer("Efamol Beautiful-Skin", "\$45.99", context),
      itemContainer("Jamieson Resveratrol", "\$22.99", context),
      itemContainer(
          "Jamieson Grape Seed Antioxidant Support", "\$22.99", context),
      itemContainer(
          "Resvertrol Rich Resveratol Concentrate", "\$35.99", context),
      itemContainer("Smart Solutions Active Collagen", "\$59.99", context),
      itemContainer(
          "Jamieson Maximum Concentrate Cranberry Complex", "\$29.99", context),
      itemContainer("Jamieson Eveninh Primrose Oil", "\$16.99", context),
      itemContainer("BEC Grape Seed Extract OPC", "\$23.99", context),
      itemContainer("Omega Alpha Hyaluroic Acid", "\$39.99", context),
      itemContainer("AgeOff Probioic Collagen+ ", "\$39.99", context),
      itemContainer("AgeoOff Collagen 2.0", "\$39.99", context),
      itemContainer("Organika Salmon Collagen", "\$20.99", context),
      itemContainer("BEC Hydrolyzed Collagen", "\$29.99", context),
      itemContainer(
          "Kirkland Women Multivitamin and Minerals", "\$19.99", context),
      itemContainer("Flora Iron+ with B-Vitamin Complex", "\$20.99", context),
    ]);
    skncrprd = category([
      itemContainer("Herbatint Permanent Hair Colour", "\$16.99", context),
      itemContainer("Nova Scotia  Fisherman Treme Skin Care Sea Kelp",
          "\$19.99", context),
      itemContainer("Moroccan Oil Treatment", "\$39.99", context),
      itemContainer("Nova Scotia Fisherman Treme Skin Care Rescue Balm",
          "\$12.99", context),
      itemContainer(
          "Bill Facial Oil with Placental Protein ", "\$25.99", context),
      itemContainer(
          "Nature's Acid Lavendar and Honey Soap ", "\$5.99", context),
      itemContainer(
          "Dr. Bronner's 18-in-1 Rose Pure- Castile Soap", "\$15.99", context),
      itemContainer(
          "Bill Natural Sources Placenta and Aloa Vera with Vitamin E",
          "\$13.99",
          context),
      itemContainer("Alba Bontanica Hawaiian Body Oil", "\$15.99", context),
      itemContainer(
          "Alba Bontanica Hawaiin Facial Wash Deep Cleansing Coconut Milk",
          "\$16.99",
          context),
      itemContainer(
          "Alba Bontanica Hawaiin Oil free Moisterizer", "\$16.99", context),
    ]);
    babyprd = category([
      itemContainer(
          "Aveeno Baby Smoothing Hydration Moisture Cream", "\$9.99", context),
      itemContainer("Aveeno Baby Calming Comfort Lotion", "\$9.99", context),
      itemContainer("Aveeno Baby Daily Lotion", "\$9.99", context),
      itemContainer("Medela Swing Single Breastpump", "\$220", context),
    ]);
    sfd = category([
      itemContainer("OceanLegend Dried Sea Cucumber", "\$240", context),
      itemContainer("Iceberg Dried Sea Cucumber", "\$190", context),
      itemContainer("Wild Sea Cucumber", "\$100", context),
      itemContainer("Iceberg Dried Fish Maw", "\$90", context),
    ]);
    snrhlthVert = category([
      verticalItemContainer(
          "DHA Vegetarian Algae (Docosahexaenoic acid)", "\$26.99", context),
    ]);
    chldhlthVert = category([
      verticalItemContainer(
          "MapleLife Kids Ca + Mag + Zn (with Vitamin D3)", "\$19.99", context),
      verticalItemContainer(
          "BILL Natural WildBlueBerry Chewables", "\$16.99", context),
      verticalItemContainer(
          "BILL Children's Colostrum Chewables", "\$16.99", context),
      verticalItemContainer("Jamieson Folic Acid (400 mg)", "\$9.99", context),
      verticalItemContainer(
          "Jamieson Curcumin Tumeric (550 mg)", "\$17.99", context),
      verticalItemContainer("Jamieson Gummies Apple Cider Vinegar (Chromium)",
          "\$17.99", context),
      verticalItemContainer("Nordic Natural Children's DNA  (530 mg Omega 1)",
          "\$29.99", context),
      verticalItemContainer(
          "Jamieson Gummies Elderberry Vitamin C +", "\$13.99", context),
      verticalItemContainer(
          "Jamieson Chewable Cold Fighter", "\$16.99", context),
      verticalItemContainer(
          "Jamieson Gummies Multi Vitamins", "\$13.99", context),
      verticalItemContainer(
          "Jamieson Effervescent Natural Orange Vitamin C (1000 mg)",
          "\$5.99",
          context),
      verticalItemContainer(
          "Jamieson Gummies Tangy Orange (550 mg)", "\$14.99", context),
      verticalItemContainer(
          "Iron Kids Essential Gummies Calcium", "\$10.99", context),
      verticalItemContainer("Omega Alpha Echinacia", "\$13.99", context),
      verticalItemContainer("Omega Alpha Herba Cough", "\$12.99", context),
      verticalItemContainer("Jamieson Organic Echinacea ", "\$15.99", context),
      verticalItemContainer(
          "Jamieson Gummies Orange Lemon Strawberry D", "\$15.99", context),
      verticalItemContainer("Centrum Prenatal DHA", "\$25.99", context),
      verticalItemContainer("Nestle Materna Multivitamins", "\$16.99", context),
      verticalItemContainer("Jamieson Prenatal ", "\$19.99", context),
      verticalItemContainer("Enfomil A+ Baby Formula", "\$35.99", context),
      verticalItemContainer(
          "Enfomil A+ Baby Formula (Eco-Value Pack)", "\$47.99", context),
      verticalItemContainer("Enfomil A+ Toddler", "\$28.99", context),
      verticalItemContainer("Omega Alpha Vitamin D3 Concentrated Kid's drops",
          "\$24.99", context),
      verticalItemContainer(
          "Baby Ddrops Liquid Vitamin D3 ", "\$15.99", context),
      verticalItemContainer(
          "Kids Ddrops Liquid Vitamin D3 ", "\$13.99", context),
      verticalItemContainer("Kids 0-9 Night Syrup", "\$15.99", context),
      verticalItemContainer("Jamieson Probiotic Drops", "\$17.99", context),
      verticalItemContainer("Culturelle Probiotic Kids", "\$25.99", context),
      verticalItemContainer(
          "Sisu U-Cubes Kids Vitamin Gummies", "\$17.99", context),
    ]);
    hbsVert = category([
      verticalItemContainer("Wedderspoon Manuka Honey", "\$46.99", context),
      verticalItemContainer("Ginseng Powder", "\$25.99", context),
      verticalItemContainer(
          "Flora Flor Essence Dry Herbal Cleanse", "\$35.99", context),
    ]);
    grocVert = category([
      verticalItemContainer("Pure Maple Syrup Candies", "\$3.99", context),
      verticalItemContainer("Golden Silver Flower Tea", "\$10.00", context),
      verticalItemContainer("Chrysanthemum  Tea", "\$10.00", context),
    ]);
    ginsengVert = category([
      verticalItemContainer(
          "Ontario Pure Ginseng Main Root (Product of Canada)",
          "\$99.99",
          context),
      verticalItemContainer(
          "Ontario Pure Ginseng Lateral Root (Product of Canada)",
          "\$75.99",
          context),
    ]);
    vtmnsVert = category([
      verticalItemContainer("Omega Alpha D3 + K2 Vitamin", "\$25.99", context),
      verticalItemContainer(
          "Jamieson Gummies Multi (for Adults)", "\$17.99", context),
      verticalItemContainer(
          "Flora Gluten-Free Adult's Probiotic", "\$51.99", context),
      verticalItemContainer(
          "Ddrops booster Liquid Vitamin D3", "\$13.99", context),
      verticalItemContainer("Jamieson Vitamin A", "\$7.99", context),
      verticalItemContainer(
          "Jamieson Multi Vitamin and Mineral Supplment (for Kids)",
          "\$11.99",
          context),
      verticalItemContainer(
          "Jamieson Timed Release Vitamin B ", "\$18.99", context),
      verticalItemContainer(
          "Jamieson Vitamin E (extra strength)", "\$19.99", context),
      verticalItemContainer(
          "Jamieson Probiotic 10 Billion Active Cells", "\$23.99", context),
      verticalItemContainer(
          "Jamieson ProVitamina Vitamin E oil", "\$18.99", context),
      verticalItemContainer(
          "Jamieson Extrastength Probiotic Gummies", "\$23.99", context),
      verticalItemContainer("Jamieson Softgels Vitamin D3", "\$7.99", context),
      verticalItemContainer("Jamieson Vitamin B1 & B2", "\$11.99", context),
      verticalItemContainer("Jamieson Vitamin B12", "\$9.99", context),
      verticalItemContainer(
          "Jamieson Timed Release Vitamin C", "\$15.99", context),
      verticalItemContainer(
          "Jamieson Chewables Juicy White Peach Vitamin C", "\$7.99", context),
      verticalItemContainer("Jamieson  Chewables Strawberry Flavour Vitamin D3",
          "\$7.99", context),
      verticalItemContainer("Jamieson Chewables Juicy Wild Blueberry Vitamin C",
          "\$7.99", context),
      verticalItemContainer(
          "IronKids Essential Gummies Omega 3", "\$15.99", context),
    ]);
    jntspVert = category([
      verticalItemContainer(
          "Jamieson Glucosamine Chondroiton MSM (Ultra Strength)",
          "\$27.99",
          context),
      verticalItemContainer("Jamieson Glucosamine ", "\$21.99", context),
      verticalItemContainer("Organika Premium Liga-Joint", "\$27.99", context),
      verticalItemContainer(
          "Jamieson Vitamin B 50 Complex", "\$13.99", context),
      verticalItemContainer(
          "Jamieson Chewables Berry Complex Vitamin B ", "\$16.99", context),
      verticalItemContainer("BEC OsteoCollagen", "\$25.99", context),
      verticalItemContainer(
          "Natural Factors FlexAble Glucosamine Sulfate", "\$27.99", context),
      verticalItemContainer(
          "Maple Life MaxiFlex Natural Healing & High Potency",
          "\$26.99",
          context),
      verticalItemContainer("Omega Alpha GlucosaPlex", "\$27.99", context),
      verticalItemContainer("Webber Naturals Vitamin e", "\$26.99", context),
      verticalItemContainer(
          "Jamieson Ultra Stength Vitamin B 100", "\$19.99", context),
      verticalItemContainer("BEC Glucosamine + MSM", "\$17.99", context),
      verticalItemContainer("Organika Blood Sugar Control Vegetarian Capsules",
          "\$29.99", context),
      verticalItemContainer("Organika Goutrin", "\$19.99", context),
      verticalItemContainer(
          "Joint Ease Glucosamine Chondroitin Extra Strength ",
          "\$33.99",
          context),
      verticalItemContainer("MapleLife Gout Relief", "\$43.99", context),
      verticalItemContainer(
          "Organika Mushroom Extract Reishi", "\$36.99", context),
      verticalItemContainer(
          "Codecol Nanaco Ultimate Calcium Supplement", "\$79.99", context),
      verticalItemContainer("Kirkland Glucosamine Sulfate", "\$29.99", context),
      verticalItemContainer(
          "Osteo Joint Ease for Chronic Pain", "\$32.99", context),
      verticalItemContainer(
          "Kirkland Calcium Plus with Vitamin D3", "\$32.99", context),
      verticalItemContainer(
          "Kirkland Glucosamine Chondroitin & MSM", "\$32.99", context),
    ]);
    ntlrmdVert = category([
      verticalItemContainer("Essiac Herbal Extract", "\$39.99", context),
      verticalItemContainer("Codeco Liver Protect", "\$38.99", context),
      verticalItemContainer("A Vogel Sinus ", "\$17.99", context),
      verticalItemContainer("A Vogel Allery Relief", "\$17.99", context),
      verticalItemContainer("Organika Bee Propolis", "\$12.99", context),
      verticalItemContainer(
          "Apiario Propolic Glycolic Solution", "\$36.99", context),
      verticalItemContainer(
          "Sunyata Golden Proplic Glycolic Extract", "\$36.99", context),
      verticalItemContainer(
          "Pon Lee Propolis Glycolic Extract", "\$35.99", context),
      verticalItemContainer(
          "Flora Flor Essence Herbal Cleanse", "\$38.99", context),
      verticalItemContainer(
          "MapleLife Gluco Balance Proffesional Herbal Formula",
          "\$27.99",
          context),
      verticalItemContainer("Jamison Chelated Chromium ", "\$14.99", context),
      verticalItemContainer("BEC Spiruline", "\$35.99", context),
      verticalItemContainer("Alpha Omega Glucolizer", "\$35.99", context),
      verticalItemContainer("BEC Bee Proplis", "\$20.99", context),
      verticalItemContainer("Organika Bee Propolis", "\$26.99", context),
      verticalItemContainer(
          "Organika Reishi Mushroom Extract", "\$20.99", context),
      verticalItemContainer("Flora Pro Essence", "\$37.99", context),
    ]);
    cndsVert = category([
      verticalItemContainer(
          "Omega Alpha Veggie Fruit Plus", "\$36.99", context),
      verticalItemContainer("Omega Alpha  Anti FlamX", "\$8.99", context),
      verticalItemContainer("Omega Alpha  Resprit", "\$33.99", context),
      verticalItemContainer("Omega Alpha  Liver Plus", "\$27.99", context),
      verticalItemContainer("Jamieson Digestive Enzymes", "\$14.99", context),
      verticalItemContainer("Flora Milk Thistle Plus", "\$14.99", context),
      verticalItemContainer("SISU Milk Thistle Complex", "\$14.99", context),
      verticalItemContainer("Jamieson Milk Thistle ", "\$19.99", context),
      verticalItemContainer("Organika Milk Thistle", "\$24.99", context),
      verticalItemContainer("Organika Chanca Piedra", "\$19.99", context),
      verticalItemContainer("Jamieson Saw Palmetto", "\$25.99", context),
      verticalItemContainer(
          "Jamieson Lycopene Tomato Concentrate", "\$15.99", context),
      verticalItemContainer(
          "Holista Remedites Liquid Softgel Milk Thistle ", "\$35.99", context),
      verticalItemContainer(
          "Codeco Prostacil Maximum Strength", "\$25.99", context),
      verticalItemContainer(
          "Omega Alpha Ultra Probiotic Plus", "\$25.99", context),
      verticalItemContainer("Omega Alpha  Multi-Zyme ", "\$25.99", context),
      verticalItemContainer(
          "Prostate Health Super Prostate Advanced Multi-Ingredient Formula",
          "\$25.99",
          context),
      verticalItemContainer("Omega Alpha  Kidney Plus", "\$23.99", context),
      verticalItemContainer(
          "Omega Alpha Protein Multi Plus ", "\$65.99", context),
    ]);
    fshoilVert = category([
      verticalItemContainer("BEC Fish Oil Omega 3", "\$15.99", context),
      verticalItemContainer(
          "Webbers Naturals Omega-3 & CoQ10", "\$29.99", context),
      verticalItemContainer("Jamieson Salmon & Fish Oil", "\$16.99", context),
      verticalItemContainer(
          "Flora Udo's Oil Omega 3+6+9 Blend", "\$36.99", context),
      verticalItemContainer("Jamieson Omega-3 Select", "\$17.99", context),
      verticalItemContainer(
          "Jamieson Cod Liver Oil with Vitamin A + D3", "\$12.99", context),
      verticalItemContainer("Kirkland Omega-3 Fish Oil", "\$29.99", context),
      verticalItemContainer(
          "Webber Naturals Triple Strength Omega-3", "\$29.100", context),
      verticalItemContainer("Kirkland Fish Oil Blend", "\$18.99", context),
      verticalItemContainer("Tera Nova Omega 3", "\$25.99", context),
      verticalItemContainer("MapleLife Harp Seal Omega 3", "\$15.99", context),
      verticalItemContainer(
          "Vital Life Heap Seal Oil Omega 3", "\$15.99", context),
      verticalItemContainer("BEC Harp Seal Omega 3", "\$25.99", context),
      verticalItemContainer("Bill Seal Oil Omega 3", "\$15.99", context),
    ]);
    flxsdgarlcVert = category([
      verticalItemContainer("SISU Co Q10 (100 mg)", "\$28.99", context),
      verticalItemContainer("BEC Cadio Energy Co Q10", "\$25.99", context),
      verticalItemContainer(
          "Kirkland Coenzyme Q10 (200 mg)", "\$44.99", context),
      verticalItemContainer(
          "Kirkland Coenyzme Q10 (100 mg)", "\$29.99", context),
      verticalItemContainer("Omega Alpha LessTerol", "\$37.99", context),
      verticalItemContainer("Jamieson Lecithin", "\$11.99", context),
      verticalItemContainer("Jamieson Odourless Garlic ", "\$16.99", context),
      verticalItemContainer("BEC Lecithin", "\$16.99", context),
      verticalItemContainer("Health Balance Lecithin Natural Source Unbleached",
          "\$16.99", context),
      verticalItemContainer(
          "Jamieson Co Q10 (Extra Strength)", "\$26.99", context),
    ]);
    mnshlthVert = category([
      verticalItemContainer("Jamieson St. John's Wort", "\$16.99", context),
      verticalItemContainer(
          "Jamieson Fast Dissolving Meltaonin (3 mg)", "\$13.99", context),
      verticalItemContainer("Jamieson Melatonin ", "\$13.99", context),
      verticalItemContainer("Jamieson Selenium", "\$13.99", context),
      verticalItemContainer(
          "Webber Naturals Super Sleep Melatonin", "\$19.99", context),
      verticalItemContainer("Perucian Gold MACA", "\$29.99", context),
      verticalItemContainer("VitaX Revita Capsules", "\$59.99", context),
      verticalItemContainer(
          "BEC Men's Essential (Generation 2)", "\$29.99", context),
      verticalItemContainer("Organika TNT Plus", "\$23.99", context),
      verticalItemContainer("Organika Organic MACA ", "\$33.99", context),
      verticalItemContainer("Omega Alpha Cal-Mag Plus", "\$25.99", context),
      verticalItemContainer(
          "Jamieson Mega Cal Calcium+ D3", "\$12.99", context),
      verticalItemContainer(
          "BEC Liquid Calcium with Vitamin B3", "\$16.99", context),
      verticalItemContainer("Jamieson Calcium Magnesium", "\$12.99", context),
      verticalItemContainer(
          "Jamieson Calcium Magnesium + D3", "\$10.99", context),
      verticalItemContainer("Omega Alpha Lung Flush", "\$28.99", context),
      verticalItemContainer("Centrum Men", "\$29.99", context),
      verticalItemContainer(
          "Jamieson Multi 100% Complete Vitamin (Men)", "\$16.99", context),
      verticalItemContainer("Centrum Men 50+", "\$29.99", context),
      verticalItemContainer(
          "Kirkland Men Multivitamin and Minerals", "\$19.99", context),
    ]);
    wmnhlthVert = category([
      verticalItemContainer("Organika Hair Plus", "\$25.99", context),
      verticalItemContainer("Jamieson Lutein-z", "\$20.99", context),
      verticalItemContainer("SISU Lutein", "\$24.99", context),
      verticalItemContainer("Omega Alpha Ginkgo Biloba", "\$17.99", context),
      verticalItemContainer(
          "Webber Naturals Ginkgo Biloba", "\$19.99", context),
      verticalItemContainer(
          "Jamieson Bilberry Antioxidant for Eye Health", "\$18.99", context),
      verticalItemContainer("Aronia Blueberry", "\$29.99", context),
      verticalItemContainer("Codeco Omni Eye Care", "\$43.99", context),
      verticalItemContainer("Codeco Multi Forte", "\$19.99", context),
      verticalItemContainer("Centrum Women", "\$29.99", context),
      verticalItemContainer("Jamieson Multi 100% Complete Vitamin (Women 50+)",
          "\$16.99", context),
      verticalItemContainer(
          "Jamieson Multi 100% Complete (Women)", "\$16.99", context),
      verticalItemContainer("Centrum Womens 50+", "\$29.99", context),
      verticalItemContainer(
          "Natural Factors Vitex Regulates", "\$25.99", context),
      verticalItemContainer(
          "Natural Factors Soy Isoflavone ", "\$26.99", context),
      verticalItemContainer(
          "Melgrace (especially for Women)", "\$59.99", context),
      verticalItemContainer("Efamol Beautiful-Skin", "\$45.99", context),
      verticalItemContainer("Jamieson Resveratrol", "\$22.99", context),
      verticalItemContainer(
          "Jamieson Grape Seed Antioxidant Support", "\$22.99", context),
      verticalItemContainer(
          "Resvertrol Rich Resveratol Concentrate", "\$35.99", context),
      verticalItemContainer(
          "Smart Solutions Active Collagen", "\$59.99", context),
      verticalItemContainer(
          "Jamieson Maximum Concentrate Cranberry Complex", "\$29.99", context),
      verticalItemContainer(
          "Jamieson Eveninh Primrose Oil", "\$16.99", context),
      verticalItemContainer("BEC Grape Seed Extract OPC", "\$23.99", context),
      verticalItemContainer("Omega Alpha Hyaluroic Acid", "\$39.99", context),
      verticalItemContainer("AgeOff Probioic Collagen+ ", "\$39.99", context),
      verticalItemContainer("AgeoOff Collagen 2.0", "\$39.99", context),
      verticalItemContainer("Organika Salmon Collagen", "\$20.99", context),
      verticalItemContainer("BEC Hydrolyzed Collagen", "\$29.99", context),
      verticalItemContainer(
          "Kirkland Women Multivitamin and Minerals", "\$19.99", context),
      verticalItemContainer(
          "Flora Iron+ with B-Vitamin Complex", "\$20.99", context),
    ]);
    skncrprdVert = category([
      verticalItemContainer(
          "Herbatint Permanent Hair Colour", "\$16.99", context),
      verticalItemContainer("Nova Scotia  Fisherman Treme Skin Care Sea Kelp",
          "\$19.99", context),
      verticalItemContainer("Moroccan Oil Treatment", "\$39.99", context),
      verticalItemContainer("Nova Scotia Fisherman Treme Skin Care Rescue Balm",
          "\$12.99", context),
      verticalItemContainer(
          "Bill Facial Oil with Placental Protein ", "\$25.99", context),
      verticalItemContainer(
          "Nature's Acid Lavendar and Honey Soap ", "\$5.99", context),
      verticalItemContainer(
          "Dr. Bronner's 18-in-1 Rose Pure- Castile Soap", "\$15.99", context),
      verticalItemContainer(
          "Bill Natural Sources Placenta and Aloa Vera with Vitamin E",
          "\$13.99",
          context),
      verticalItemContainer(
          "Alba Bontanica Hawaiian Body Oil", "\$15.99", context),
      verticalItemContainer(
          "Alba Bontanica Hawaiin Facial Wash Deep Cleansing Coconut Milk",
          "\$16.99",
          context),
      verticalItemContainer(
          "Alba Bontanica Hawaiin Oil free Moisterizer", "\$16.99", context),
    ]);
    babyprdVert = category([
      verticalItemContainer(
          "Aveeno Baby Smoothing Hydration Moisture Cream", "\$9.99", context),
      verticalItemContainer(
          "Aveeno Baby Calming Comfort Lotion", "\$9.99", context),
      verticalItemContainer("Aveeno Baby Daily Lotion", "\$9.99", context),
      verticalItemContainer("Medela Swing Single Breastpump", "\$220", context),
    ]);
    sfdVert = category([
      verticalItemContainer("OceanLegend Dried Sea Cucumber", "\$240", context),
      verticalItemContainer("Iceberg Dried Sea Cucumber", "\$190", context),
      verticalItemContainer("Wild Sea Cucumber", "\$100", context),
      verticalItemContainer("Iceberg Dried Fish Maw", "\$90", context),
    ]);
  }

  Container makeCategory(context, category catvert, category cat,
      String categoryName, int _current) {
    int localIdx = 0;
    return Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          nextPageButton(context, catvert, categoryName),
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
                        } else if (_current == 12) {
                          _current12 = index;
                        } else if (_current == 13) {
                          _current13 = index;
                        } else if (_current == 14) {
                          _current14 = index;
                        } else if (_current == 15) {
                          _current15 = index;
                        } else if (_current == 16) {
                          _current16 = index;
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
                      color: (Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black).withOpacity(

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
                                                      ? _current7 == entry.key
                                                          ? 0.9
                                                          : 0.4
                                                      : _current == 8
                                                          ? _current8 == entry.key
                                                              ? 0.9
                                                              : 0.4
                                                          : _current == 9
                                                              ? _current9 == entry.key
                                                                  ? 0.9
                                                                  : 0.4
                                                              : _current == 10
                                                                  ? _current10 == entry.key
                                                                      ? 0.9
                                                                      : 0.4
                                                                  : _current == 11
                                                                      ? _current11 == entry.key
                                                                          ? 0.9
                                                                          : 0.4
                                                                      : _current == 12
                                                                          ? _current12 == entry.key
                                                                              ? 0.9
                                                                              : 0.4
                                                                          : _current == 13
                                                                              ? _current13 == entry.key
                                                                                  ? 0.9
                                                                                  : 0.4
                                                                              : _current == 14
                                                                                  ? _current14 == entry.key
                                                                                      ? 0.9
                                                                                      : 0.4
                                                                                  : _current == 15
                                                                                      ? _current15 == entry.key
                                                                                          ? 0.9
                                                                                          : 0.4
                                                                                      : _current == 16
                                                                                          ? _current16 == entry.key
                                                                                              ? 0.9
                                                                                              : 0.4
                                                                                          : 0.4)),
                ),
              );
            }).toList(),
          )
        ]));
  }
}
