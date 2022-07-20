// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:daonsushi/main.dart';

Row nameprice(String name, String price, [String desc = ""]) {
  return Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: "Nunito",
              ),
              // textAlign: TextAlign.left,
            ),
            desc == ""
                ? Container()
                : Text(
                    desc,
                    style: const TextStyle(
                      color: Color.fromARGB(
                        255,
                        202,
                        202,
                        202,
                      ),
                    ),
                  ),
          ],
        ),
      ),
      Container(
          child: Text(
        price,
        style: const TextStyle(color: Colors.white, fontSize: 20),
        textAlign: TextAlign.right,
      )),
      const SizedBox(
        height: 50,
      )
    ],
  );
}

void createRow() {
  appet.add(nameprice("Edamame", "\$ 5.95 ", "Boiled green bean"));
  appet.add(nameprice(
      "Agedashi Tofu", "\$ 6.95 ", "Deep fried tofu with teriyaki sauce"));
  appet.add(nameprice("Sashimi Appetizer", "\$ 10.95", "6pcs"));
  appet.add(nameprice("Shrimp Tempura", "\$ 11.95", "4pcs"));
  appet.add(nameprice("Sushi Appetizer", "\$ 10.95", "6pcs"));
  appet.add(nameprice("Tempura Mix", "\$ 12.95", "Shrimp 4pcs Vege 4pcs"));

  sldsprc.add(nameprice("Green Salad", "\$ 5.95"));
  sldsprc.add(nameprice("Seaweed Salad", "\$ 6.95"));
  sldsprc.add(nameprice("Avocado Green Salad", "\$ 6.95"));
  sldsprc.add(nameprice("Miso Soup, Rice", "\$ 1.95"));
  sldsprc.add(nameprice("Extra Sauce, Ginger, Wasabi", "\$ 1.00"));

  salmnsushi.add(nameprice("Salmon Sashimi (Small)", "\$ 19.95", "12pcs"));
  salmnsushi.add(nameprice("Salmon Sashimi (Medium)", "\$ 25.95", "16pcs"));
  salmnsushi.add(nameprice("Salmon Sashimi (Large)", "\$ 35.95", "22pcs"));

  lnchbxcmb.add(
      nameprice("Sushi & Rolls", "\$ 14.95", "Sushi 6pcs Spicy Roll 6pcs"));
  lnchbxcmb.add(
      nameprice("Sashimi & Rolls", "\$ 14.95", "Sashimi 6pcs Spicy Roll 6pcs"));
  lnchbxcmb.add(nameprice(
      "Roll Lunch Box", "\$ 13.95", "Spicy Roll 6pcs California Roll 6pcs"));
  lnchbxcmb.add(nameprice(
      "Bulgogi Lunch Box", "\$ 13.95", "Marinated Korean Style Beef"));
  lnchbxcmb.add(nameprice("Combo Lunch Box", "\$ 15.95",
      "Sushi 4pcs Sashimi 4pcs Spicy Roll 6pcs"));
  lnchbxcmb
      .add(nameprice("Teriyaki Box", "\$ 13.95", "Beef, Chicken, or Salmon"));

  dnbxcmb.add(nameprice(
      "Sushi Dinner Box", "\$ 17.95", "Sushi 8pcs Spicy Salmon Roll 6pcs"));
  dnbxcmb.add(nameprice(
      "Sashimi Dinner Box", "\$ 17.95", "Sashimi 8pcs Spicy Salmon Roll 6pcs"));
  dnbxcmb.add(nameprice("Roll Dinner Box", "\$ 21.95",
      "Spicy Salmon Roll 6pcs Dynamite Roll 8pcs"));
  dnbxcmb.add(nameprice(
      "Bulgogi Dinner Box", "\$ 16.95", "Marinated Korean Style Beef"));
  dnbxcmb.add(
      nameprice("Teriyaki Dinner Box", "\$ 16.95", "Beef, Chicken, or Salmon"));
  dnbxcmb.add(nameprice("Combo Dinner Box", "\$ 19.95",
      "Sushi 5pcs, Sashimi 5pcs, Spicy Salmon 6pcs"));

  tryak.add(nameprice("Beef Teriyaki ", "\$ 16.95"));
  tryak.add(nameprice("Chicken Teriyaki", "\$ 16.95"));
  tryak.add(nameprice("Salmon Teriyaki", "\$ 16.95"));
  tryak.add(nameprice("BBQ Eel Teriyaki", "\$ 21.95"));

  dnbri.add(nameprice("Beef Donburi", "\$ 11.95"));
  dnbri.add(nameprice("Chicken Donburi", "\$ 11.95"));
  dnbri.add(nameprice("Chirashi Donburi", "\$ 16.95"));
  dnbri.add(nameprice("Heh Dup Bap ", "\$ 16.95",
      "Assorted Sashimi on Rice Served with Spicy Sauce"));

  udon.add(nameprice("Vegetable Udon", "\$ 10.95"));
  udon.add(nameprice("Seafood Udon ", "\$ 11.95"));
  udon.add(nameprice("Spicy Seafood Udon", "\$ 11.95"));
  udon.add(nameprice("Tempura Udon ", "\$ 16.95"));

  vegeclsicrll.add(nameprice("Avocado Roll ", "\$ 6.95"));
  vegeclsicrll.add(nameprice("Cucumber Roll", "\$ 5.95"));
  vegeclsicrll.add(nameprice("Avocado & Cucumber Roll ", "\$ 5.95"));

  ykudn.add(nameprice("Vegetable Yaki Udon", "\$ 11.95",
      "Chicken, Beef, or Shrimp pan stir fried noodles"));
  ykudn.add(nameprice("Yaki Udon", "\$ 12.95", "Pan stir fried noodles"));

  spcyclrll.add(nameprice("Spicy Crab Roll ", "\$ 6.95"));
  spcyclrll.add(nameprice("Spicy Salmon Roll ", "\$ 6.95"));
  spcyclrll.add(nameprice("Spicy Tuna Roll", "\$ 7.95"));

  clscrll.add(nameprice("California Roll", "\$ 5.95"));
  clscrll.add(nameprice("Crab Roll ", "\$ 6.95"));
  clscrll.add(nameprice("Salmon Roll ", "\$ 6.95"));
  clscrll.add(nameprice("Avocado & Salmon Roll", "\$ 6.95"));
  clscrll.add(nameprice("Tuna Roll", "\$ 7.95"));
  clscrll.add(nameprice("Unagi Roll", "\$ 7.95"));

  drgnrll.add(nameprice(
      "Black Dragon ", "\$ 15.95", "Dynamite Roll with BBQ Eel Topping"));
  drgnrll.add(nameprice(
      "Green Dragon ", "\$ 14.95", "Dynamite Roll with Avacado Topping"));
  drgnrll.add(nameprice(
      "Gold Dragon ", "\$ 14.95", "Dynamite Roll with Salmon Topping"));
  drgnrll.add(nameprice(
      "Red Dragon ", "\$ 15.95", "Dynamite Roll with Red Tuna Topping"));
  drgnrll.add(nameprice("White Dragon ", "\$ 14.95",
      "Dynamite Roll with Philadelphia Cream Cheese Topping"));

  spclrll.add(nameprice("Caterpillar Roll", "\$ 13.95",
      "Large California Roll Topped with Avacado and BBQ Eel"));
  spclrll.add(nameprice("Crispy Crunch Roll ", "\$ 15.95",
      "Deep Fried Roll with Spicy Salmon, Crab, Avacado, and Cucumber"));
  spclrll.add(nameprice("Double Shrimp Roll ", "\$ 15.95",
      "Large California Roll with 4pcs Deep Fried Shrimp"));
  spclrll.add(nameprice("Dynamite Roll", "\$ 13.95",
      "Large California Roll with 2pcs Deep Fried Shrimp"));
  spclrll.add(nameprice("Hawaiian Roll", "\$ 13.95",
      "Large Roll with Crab, Mango, Avacado, and Cucumber"));
  spclrll.add(nameprice("Phili Roll ", "\$ 13.95",
      "Large Roll with Fresh Salmon, Cream Cheese, Crab, and Avacado"));
  spclrll.add(nameprice("Spider Roll", "\$ 16.95",
      "Large Roll with Deep Fried Soft Shell Crab, Avacado, and Cucumber"));
  spclrll.add(nameprice("Torched Salmon Roll", "\$ 15.95",
      "Dynamite Roll Topping with Torched Salmon"));
  spclrll.add(nameprice(
      "Rainbow Roll ", "\$ 14.95", "Large California Roll Topped with Fish"));
  spclrll.add(nameprice("Yellow Sun Roll ", "\$ 14.95",
      "Large Roll with Spicy Salmon, Crab, and Cucumber Topped with Salmon"));

  rllcmbo.add(nameprice(
      "Dynamite & Sushi", "\$ 19.95", "Dynamite Roll 8pcs Sushi 5pcs"));
  rllcmbo.add(nameprice(
      "Dynamite & Sashimi", "\$ 19.95", "Dynamite Roll 8pcs Sashimi 5pcs"));
  rllcmbo.add(
      nameprice("Dynamite & Udon", "\$ 23.95", "Dynamite Roll 8pcs + Udon"));
  rllcmbo.add(nameprice(
      "California Roll & Udon", "\$ 15.95", "California Roll 6pcs + Udon"));
  rllcmbo.add(nameprice(
      "Spicy Roll & Udon", "\$ 16.95", "Spicy Salmon Roll 6pcs + Udon"));
  rllcmbo.add(nameprice("Assorted Roll Combo", "\$ 17.95",
      "California Roll 6pcs Spicy Salmon 6pcs Avo/Salmon 6pcs"));
  rllcmbo.add(nameprice("Spicy Roll Combo", "\$ 19.95",
      "Spicy California 6pcs Spicy Salmon 6pcs Spicy Crab 6pcs"));

  ssmshicmb.add(
      nameprice("Sashimi & Sushi (S)", "\$ 12.95", "Sushi 6pcs Sashimi 4pcs"));
  ssmshicmb.add(
      nameprice("Sashimi & Sushi (M)", "\$ 17.95", "Sushi 8pcs Sashimi 6pcs"));
  ssmshicmb.add(nameprice(
      "Sashimi & Sushi (L)", "\$  29.95", "Sushi 10pcs Sashimi 10pcs"));

  cmbspcl.add(nameprice(
      "Combo A 16pcs", "\$ 19.95", "Sushi 6pcs Sashimi 4pcs Roll 6pcs"));
  cmbspcl.add(nameprice(
      "Combo B 18pcs", "\$ 22.95", "Sushi 6pcs Sashimi 6pcs Spicy Roll 6pcs"));
  cmbspcl.add(nameprice("Combo C 26pcs", "\$ 35.95",
      "Sushi 10pcs Sashimi 8pcs Dynamite Roll 8pcs"));
  cmbspcl.add(nameprice("Combo D 30pcs", "\$ 41.95",
      "Sushi 12pcs Sashimi 10pcs Dragon Roll 8pcs"));

  ptytry.add(nameprice("Party Tray (S) 36pcs", "\$ 42.95",
      "Sushi 12pcs Sashimi 12pcs California Roll 6pcs Spicy Salmon 6pcs"));
  ptytry.add(nameprice("Party Tray (M) 46pcs", "\$ 56.95",
      "Sushi 16pcs Sashimi 16pcs Spicy Salmon 6pcs Dynamite Roll 8pcs"));
  ptytry.add(nameprice("Party Tray (L) 62pcs", "\$ 76.95",
      "Sushi 20pcs Sashimi 20pcs Dynamite Roll 8pcs"));
  ptytry.add(nameprice("Party Tray (XL) 76pcs", "\$ 90.95",
      "Sushi 24pcs Sashimi 24pcs Dynamite Roll 8pcs Dragon Roll 8pcs California Roll 6pcs Spicy Salmon 6pcs"));
}
