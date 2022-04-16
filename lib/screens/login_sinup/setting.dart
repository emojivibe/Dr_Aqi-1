import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home_screem.dart';
import 'cart.dart';
import 'dash_board.dart';
import 'map.dart';
class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  int currentIndex = 0;
  final screens = [
    HomeScreen(),
    dashBoard(),
    polltMap(),
    Cart(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        leading : Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black),
        backgroundColor: Colors.white,
        title: Text("SETTINGS",style: TextStyle(color: Colors.black),),

      ),
      body:
      Padding(
        padding: const EdgeInsets.only(top:30.0),
        child: GestureDetector(
            child: Image.asset(
              "assets/setting.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fill,
            )),

      ),
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
    );
  }
}
