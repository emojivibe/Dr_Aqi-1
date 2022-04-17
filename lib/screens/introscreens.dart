
import 'package:draqi/screens/login_sinup/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_screem.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import 'home_screen.dart';

class IntroScreen extends StatelessWidget {

  IntroScreen({Key? key}) : super(key: key);

  ///Changed a little bit of buttons styling and text for the thumbnail lol
  ///Thanks for coming here :-)
  final List<PageViewModel> pages = [
    PageViewModel(
        title: 'Real-Time AQI Monitoring',
        body:
            'Smart Real-time updates and notifications keeps you protected and prepared',
        footer: SizedBox(
          height: 45,
          width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 8),
            onPressed: () {},
            child: const Text("Next", style: TextStyle(fontSize: 20)),
          ),
        ),
        image: Center(
          child: Image.asset(
            'assets/Splash1.png',
            fit: BoxFit.cover,
          ),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ))),
    PageViewModel(
        title: 'Mitigation Measures',
        body:
            'Effective Mitigation Measures for implementation as per AQI severity',
        footer: SizedBox(
          height: 45,
          width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 8),
            onPressed: () {

            },
            child: const Text("Next", style: TextStyle(fontSize: 20)),
          ),
        ),
        image: Center(
          child: Image.asset(
            'assets/splash2.png',
            fit: BoxFit.cover,
          ),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ))),
    PageViewModel(
        title: 'Meningful Data Analytics',
        body:
            'Meaningful graphs and data visualisation makes AQI easier to understand',
        footer: SizedBox(
          height: 45,
          width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 8),
            onPressed: (){},
            child: const Text("Next", style: TextStyle(fontSize: 20)),
          ),
        ),
        image: Center(
          child: Image.asset(
            'assets/Splash3.png',
            fit: BoxFit.cover,
          ),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ))),
  ];

  @override

  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 80, 12, 12),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: const DotsDecorator(
            size: Size(15, 15),
            color: Colors.grey,
            activeSize: Size.square(20),
            activeColor: Colors.black,
          ),
          showDoneButton: true,
          skipStyle: TextButton.styleFrom(primary: Colors.black),
          doneStyle: TextButton.styleFrom(primary: Colors.black),
          nextStyle: TextButton.styleFrom(primary: Colors.black),
          done: const Text(
            'Done',
            style: TextStyle(fontSize: 20),
          ),
          showSkipButton: true,
          skip: const Text(
            'Skip',
            style: TextStyle(fontSize: 20),
          ),
          showNextButton: true,
          next: const Icon(
            Icons.arrow_forward,
            size: 25,
          ),
          onDone: () => onDone(context),
          curve: Curves.bounceOut,
        ),
      ),
    );
  }

  void onDone(context) async {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LoginScreen()));
  }
}
