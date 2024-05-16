import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:ott/home.dart';
import 'package:ott/search.dart';
import 'package:ott/settings.dart';
import 'package:ott/t.dart';

void main() => runApp(bot());


class bot extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<bot> {
  int _selectedIndex = 0;

  List<Widget> tabItems = [
    home(),
    search(),
    Account(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   // var currentwidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(


        appBar: AppBar(),
        body: Center(
          child: tabItems[_selectedIndex],
        ),
        bottomNavigationBar: FlashyTabBar(
          animationCurve: Curves.fastEaseInToSlowEaseOut,
          selectedIndex: _selectedIndex,
          iconSize: MediaQuery.of(context).size.width * 0.05, // Adjust the percentage as needed for icon size

          showElevation: false, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
          }),
          items: [
            FlashyTabBarItem(
              icon: Icon(Icons.home),
              title: Text('home'),
            ),
            FlashyTabBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
            ),
            FlashyTabBarItem(
              icon: Icon(Icons.settings),
              title: Text("settings"),
            ),
          ],
        ),

      ),
    );
  }
}