// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class category {
  late List<Widget> widgetsList;
  category(List<Widget> a) {
    widgetsList = a;
  }

  Column returnColumn() {
    return Column(
      children: widgetsList,
    );
  }

  Row returnRow() {
    return Row(
      children: widgetsList,
    );
  }

  List<Widget> returnList() {
    return widgetsList;
  }
}
