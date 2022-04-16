import 'package:draqi/screens/bottomNavBar.dart';
import 'package:draqi/screens/home_screem.dart';
import 'package:draqi/screens/introscreens.dart';
import 'package:draqi/screens/login_sinup/cart2.dart';
import 'package:draqi/screens/login_sinup/login_screen.dart';
import 'package:draqi/screens/login_sinup/setting.dart';
import 'package:flutter/material.dart';
import 'package:draqi/Widget/CartWidget.dart';

import 'screens/login_sinup/sign_up.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: IntroScreen(),
      // initialRoute: 'Cart2',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        'first': (context) =>  BottomNavBarr(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        'Cart2': (context) => const Cart2(),
      },
   home:
   Setting(),
      // home: RegistrationScreen(),
    );
  }
}
