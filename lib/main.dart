import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'input_page.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
   home: InputPage(),

      //  AnimatedSplashScreen(splash: FontAwesomeIcons.transgender,splashIconSize: 90,
    // backgroundColor: Colors.black54,
    // splashTransition: SplashTransition.fadeTransition,
    // nextScreen: InputPage(),
    // ),
    );
  }
}
