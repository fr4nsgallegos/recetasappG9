import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:recetasappg9/pages/home_page.dart';
import 'package:recetasappg9/pages/list_view_page.dart';

class TabBarPage extends StatefulWidget {
  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  final pageController = PageController();
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                text: "hola",
              ),
              Tab(
                text: "chau",
              )
            ],
          ),
        ),
        // bottomNavigationBar: CurvedNavigationBar(
        //   items: [
        //     Icon(Icons.home),
        //     Icon(Icons.list),
        //   ],
        //   onTap: (index) {
        //     pageController.animateToPage(
        //       index,
        //       duration: Duration(seconds: 2),
        //       curve: Curves.linear,
        //     );
        //   },
        // ),
        body: TabBarView(
          controller: _tabController,
          children: [
            HomePage(),
            ListViewPage(),
          ],
        ),
      ),
    );
  }
}
