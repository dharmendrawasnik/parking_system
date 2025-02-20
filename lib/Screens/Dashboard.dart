import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DetailsScreen.dart';
import 'Home_Screen.dart';
import 'PersonDetailsScreen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final screens = [
      HomeScreen(),
      Detailsscreen(),
      Persondetailsscreen()
    ];
    final items = <Widget>[
      Icon(Icons.home, size: 40),
      Icon(Icons.timer, size: 40),
      Icon(Icons.person, size: 40),
    ];
    return SafeArea(
      child: Scaffold(
       // backgroundColor: Colors.black.withOpacity(0.5),
        extendBody: true,
        body:screens[index],

        bottomNavigationBar: Theme(
          data: Theme.of(
            context,
          ).copyWith(iconTheme: IconThemeData(color: Colors.white)),
          child: CurvedNavigationBar(
            key: navigationKey,
            color: Colors.blue.shade200,
            buttonBackgroundColor: Colors.amber,
            backgroundColor: Colors.transparent,
            height: 60,
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 300),
            index: index,
            items: items,
            onTap:
                (index) => setState(() {
                  this.index = index;
                }),
          ),
        ),
      ),
    );
  }
}
