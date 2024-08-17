import 'package:flutter/material.dart';
import 'package:recetasappg9/pages/calculator_page.dart';
import 'package:recetasappg9/pages/form_page.dart';
import 'package:recetasappg9/pages/future_page.dart';
import 'package:recetasappg9/pages/home_page.dart';
import 'package:recetasappg9/pages/list_view_page.dart';
import 'package:recetasappg9/pages/retos_container_page.dart';
import 'package:recetasappg9/pages/scroll_page.dart';
import 'package:recetasappg9/pages/tabbar_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: TabBarPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
