import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bmi_calculator/LiquidIntroduction.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  Future<bool>_incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.containsKey('Intro') && prefs.getBool('Intro');

  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(future: _incrementCounter(), builder: (context,snapshot) {
      if (snapshot.hasData) {
        bool intro = snapshot.data;
        return MaterialApp(
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Colors.white,
          ),
          debugShowCheckedModeBanner: false,
          home: AnimatedSplashScreen(
            splash: FontAwesomeIcons.calculator,
            duration: 100,
            splashIconSize: 90,
            backgroundColor: Colors.black54,
            splashTransition: SplashTransition.fadeTransition,
            nextScreen: intro ? InputPage() : IntroductionScreen(),
          ),
        );
      }

      else {return Container();}
    }
    );
  }
}

