import 'package:draqi/screens/bottomNavBar.dart';
import 'package:draqi/screens/home_screem.dart';
import 'package:draqi/screens/introscreens.dart';
import 'package:draqi/screens/login_sinup/login_screen.dart';
import 'package:flutter/material.dart';

import 'screens/login_sinup/sign_up.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: IntroScreen(),
   home:BottomNavBarr(),
      // home: RegistrationScreen(),
    );
  }
}
