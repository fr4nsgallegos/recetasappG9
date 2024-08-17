import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:recetasappg9/pages/home_page.dart';
import 'package:recetasappg9/pages/list_view_page.dart';

class ScreenModel {
  Widget pageName;
  String title;
  Color bgColor;
  Color buttonColorOption;
  Icon icono;

  ScreenModel({
    required this.pageName,
    required this.title,
    required this.bgColor,
    required this.buttonColorOption,
    required this.icono,
  });
}

List<ScreenModel> pagesDetails = [
  ScreenModel(
    pageName: HomePage(
      bgColor: Color(0xff344e41),
    ),
    title: "Home Page",
    bgColor: Color(0xff344e41),
    buttonColorOption: Colors.white.withOpacity(0.3),
    icono: Icon(Icons.home),
  ),
  ScreenModel(
    pageName: ListViewPage(
      bgColor: Color(0xff3a5a40),
    ),
    title: "Listview Page",
    bgColor: Color(0xff3a5a40),
    buttonColorOption: Colors.white.withOpacity(0.3),
    icono: Icon(Icons.list),
  ),
];
