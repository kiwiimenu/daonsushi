import 'package:flutter/material.dart';
import 'package:daonsushi/main.dart';

Row nameprice(String name, String price) {
  return Row(
    children: [
      Expanded(
          child: Text(
        name,
        style: TextStyle(color: Colors.white),
      )),
      Container(
          child: Text(
        price,
        style: TextStyle(
          color: Colors.white,
        ),
        textAlign: TextAlign.right,
      )),
      SizedBox(
        height: 25,
      )
    ],
  );
}

void createRow() {
  appet.add(nameprice("Edamame", "\$ 5.95 "));
  appet.add(nameprice("Agedashi Tofu", "\$ 6.95 "));
  appet.add(nameprice("Sashimi Appetizer", "\$ 10.95 "));
  appet.add(nameprice("Shrimp Tempura", "\$ 11.95 "));
  appet.add(nameprice("Sushi Appetizer", "\$ 10.95 "));
  appet.add(nameprice("Tempura Mix", "\$ 12.95 "));

  sldsprc.add(nameprice("Green Salad", "\$ 5.95"));
  sldsprc.add(nameprice("Seaweed Salad", "\$ 6.95"));
  sldsprc.add(nameprice("Avocado Green Salad", "\$ 6.95"));
  sldsprc.add(nameprice("Miso Soup, Rice", "\$ 1.95"));
  sldsprc.add(nameprice("Extra Sauce, Ginger, Wasabi", "\$ 1.00"));

  salmnsushi.add(nameprice("Salmon Sashimi (Small) 12pcs", "\$ 19.95 "));
  salmnsushi.add(nameprice("Salmon Sashimi (Medium) 16pcs", "\$ 25.95 "));
  salmnsushi.add(nameprice("Salmon Sashimi (Large) 22pcs ", "\$ 35.95 "));

  lnchbxcmb.add(nameprice("Sushi & Rolls", "\$ 14.95"));
  lnchbxcmb.add(nameprice("Sashimi & Rolls", "\$ 14.95"));
  lnchbxcmb.add(nameprice("Roll Lunch Box", "\$ 13.95"));
  lnchbxcmb.add(nameprice("Bulgogi Lunch Box", "\$ 13.95"));
  lnchbxcmb.add(nameprice("Combo Lunch Box", "\$ 15.95"));
  lnchbxcmb.add(nameprice("Teriyaki Box", "\$ 13.95"));

  dnbxcmb.add(nameprice("Sushi Dinner Box", "\$ 17.95 "));
  dnbxcmb.add(nameprice("Sashimi Dinner Box", "\$ 17.95 "));
  dnbxcmb.add(nameprice("Roll Dinner Box", "\$ 21.95 "));
  dnbxcmb.add(nameprice("Bulgogi Dinner Box", "\$ 16.95 "));
  dnbxcmb.add(nameprice("Teriyaki Dinner Box", "\$ 16.95 "));
  dnbxcmb.add(nameprice("Combo Dinner Box", "\$ 19.95 "));

  tryak.add(nameprice("Beef Teriyaki ", "\$ 16.95"));
  tryak.add(nameprice("Chicken Teriyaki", "\$ 16.95"));
  tryak.add(nameprice("Salmon Teriyaki", "\$ 16.95"));
  tryak.add(nameprice("BBQ Eel Teriyaki", "\$ 21.95"));

  dnbri.add(nameprice("Beef Donburi", "\$ 11.95"));
  dnbri.add(nameprice("Chicken Donburi", "\$ 11.95"));
  dnbri.add(nameprice("Chirashi Donburi", "\$ 16.95"));
  dnbri.add(nameprice("Heh Dup Bap ", "\$ 16.95"));

  udon.add(nameprice("Vegetable Udon", "\$ 10.95"));
  udon.add(nameprice("Seafood Udon ", "\$ 11.95"));
  udon.add(nameprice("Spicy Seafood Udon", "\$ 11.95"));
  udon.add(nameprice("Tempura Udon ", "\$ 16.95"));

  vegeclsicrll.add(nameprice("Avocado Roll ", "\$ 6.95"));
  vegeclsicrll.add(nameprice("Cucumber Roll", "\$ 5.95"));
  vegeclsicrll.add(nameprice("Avocado & Cucumber Roll ", "\$ 5.95"));

  ykudn.add(nameprice("Vegetable Yaki Udon", "\$ 11.95 "));
  ykudn.add(nameprice("Yaki Udon", "\$ 12.95 "));

  spcyclrll.add(nameprice("Spicy Crab Roll ", "\$ 6.95"));
  spcyclrll.add(nameprice("Spicy Salmon Roll ", "\$ 6.95"));
  spcyclrll.add(nameprice("Spicy Tuna Roll", "\$ 7.95"));

  clscrll.add(nameprice("California Roll", "\$ 5.95"));
  clscrll.add(nameprice("Crab Roll ", "\$ 6.95"));
  clscrll.add(nameprice("Salmon Roll ", "\$ 6.95"));
  clscrll.add(nameprice("Avocado & Salmon Roll", "\$ 6.95"));
  clscrll.add(nameprice("Tuna Roll", "\$ 7.95"));
  clscrll.add(nameprice("Unagi Roll", "\$ 7.95"));

  spclrll.add(nameprice("Spicy Crab Roll ", "\$ 6.95"));
  spclrll.add(nameprice("Spicy Salmon Roll ", "\$ 6.95"));
  spclrll.add(nameprice("Spicy Tuna Roll", "\$ 7.95"));

  drgnrll.add(nameprice("Black Dragon ", "\$ 15.95"));
  drgnrll.add(nameprice("Green Dragon ", "\$ 14.95"));
  drgnrll.add(nameprice("Gold Dragon ", "\$ 14.95"));
  drgnrll.add(nameprice("Red Dragon ", "\$ 15.95"));
  drgnrll.add(nameprice("White Dragon ", "\$ 14.95"));

  spclrll.add(nameprice("Caterpillar Roll", "\$ 13.95"));
  spclrll.add(nameprice("Crispy Crunch Roll ", "\$ 15.95"));
  spclrll.add(nameprice("Double Shrimp Roll ", "\$ 15.95"));
  spclrll.add(nameprice("Dynamite Roll", "\$ 13.95"));
  spclrll.add(nameprice("Hawaiian Roll", "\$ 13.95"));
  spclrll.add(nameprice("Phili Roll ", "\$ 13.95"));
  spclrll.add(nameprice("Spider Roll", "\$ 16.95"));
  spclrll.add(nameprice("Torched Salmon Roll", "\$ 15.95"));
  spclrll.add(nameprice("Rainbow Roll ", "\$ 14.95"));
  spclrll.add(nameprice("Yellow Sun Roll ", "\$ 14.95"));

  rllcmbo.add(nameprice("Dynamite & Sushi", "\$ 19.95 "));
  rllcmbo.add(nameprice("Dynamite & Sashimi", "\$ 19.95 "));
  rllcmbo.add(nameprice("Dynamite & Udon", "\$ 23.95 "));
  rllcmbo.add(nameprice("California Roll & Udon", "\$ 15.95 "));
  rllcmbo.add(nameprice("Spicy Roll & Udon", "\$ 16.95 "));
  rllcmbo.add(nameprice("Assorted Roll Combo", "\$ 17.95 "));
  rllcmbo.add(nameprice("Spicy Roll Combo", "\$ 19.95 "));

  ssmshicmb.add(nameprice("Sashimi & Sushi (S)", "\$ 12.95"));
  ssmshicmb.add(nameprice("Sashimi & Sushi (M)", "\$ 17.95"));
  ssmshicmb.add(nameprice("Sashimi & Sushi (L)", "\$  29.95"));

  cmbspcl.add(
      nameprice("Combo A (Sushi 6pcs Sashimi 4pcs Roll 6pcs)", "\$ 19.95"));
  cmbspcl.add(nameprice(
      "Combo B (Sushi 6pcs Sashimi 6pcs Spicy Roll 6pcs)", "\$ 22.95"));
  cmbspcl.add(nameprice(
      "Combo C (Sushi 10pcs Sashimi 8pcs Dynamite Roll 8pcs)", "\$ 35.95"));
  cmbspcl.add(nameprice(
      "Combo D (Sushi 12pcs Sashimi 10pcs Dragon Roll 8pcs)", "\$ 41.95"));

  ptytry.add(nameprice(
      "Party Tray (S) 36pcs (Sushi 12pcs Sashimi 12pcs California Roll 6pcs Spicy Salmon 6pcs)",
      "\$ 42.95 "));
  ptytry.add(nameprice(
      "Party Tray (M) 45pcs (Sushi 16pcs Sashimi 16pcs Spicy Salmon 6pcs Dynamite Roll 8pcs)",
      "\$ 56.95 "));
  ptytry.add(nameprice(
      "Party Tray (L) 62pcs (Sushi 20pcs Sashimi 20pcs Dynamite Roll 8pcs)",
      "\$ 76.95 "));
  ptytry.add(nameprice(
      "Party Tray (XL) 76pcs (Sushi 24pcs Sashimi 24pcs Dynamite Roll 8pcs Dragon Roll 8pcs California Roll 6pcs Spicy Salmon 6pcs)",
      "\$ 90.95 "));
}
