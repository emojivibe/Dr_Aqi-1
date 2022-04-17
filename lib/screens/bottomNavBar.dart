import 'package:draqi/screens/home_screem.dart';
import 'package:draqi/screens/login_sinup/cart.dart';
import 'package:draqi/screens/login_sinup/dash_board.dart';
import 'package:draqi/screens/login_sinup/map.dart';
import 'package:draqi/screens/login_sinup/setting.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBarr extends StatefulWidget {

  const BottomNavBarr({Key? key}) : super(key: key);

  @override
  _BottomNavBarrState createState() => _BottomNavBarrState();
}

class _BottomNavBarrState extends State<BottomNavBarr> {
  int currentIndex = 0;
  final screens = [
    HomeScreen(),
    dashBoard(),
    polltMap(),
    Cart(),
    Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.deepPurple),
      ),
      home: Scaffold(
        drawer: Drawer(),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black54,
          selectedItemColor: Colors.black,
          iconSize: 20,
          selectedFontSize: 15,
          unselectedFontSize: 13,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
              // backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard_rounded,
              ),
              label: 'DashBoard',
              // backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.map_rounded,
              ),
              label: 'LocationMap',
              // backgroundColor: Colors.deepOrangeAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'ShopingCart',
              // backgroundColor: Colors.deepPurpleAccent,
            ),
          ],
        ),
      ),

      //routes
      // routes: {
      //   '/': (context) => study(),
      //   MyRoutes.study: (context) => study(),
      //   MyRoutes.books: (context) => books(),
      //   MyRoutes.videos: (context) => videos(),
      // },
    );
  }
}
