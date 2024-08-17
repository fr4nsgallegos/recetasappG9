import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:recetasappg9/pages/home_page.dart';
import 'package:recetasappg9/pages/list_view_page.dart';

class TabBarPage extends StatefulWidget {
  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  final pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          buttonBackgroundColor: Colors.yellow,
          backgroundColor: Colors.cyan,
          color: Colors.red,
          index: currentIndex,
          items: [
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(Icons.list),
          ],
          onTap: (index) {
            pageController.animateToPage(
              index,
              duration: Duration(seconds: 2),
              curve: Curves.linear,
            );
            currentIndex = index;
            setState(() {});
          },
        ),
        body: PageView(
          controller: pageController,
          onPageChanged: (index) {
            currentIndex = index;
            setState(() {});
          },
          children: [
            HomePage(),
            ListViewPage(),
          ],
        ),
      ),
    );
  }
}
