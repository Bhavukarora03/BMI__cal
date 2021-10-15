import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:shared_preferences/shared_preferences.dart';

const h2Style =
    TextStyle(color: Colors.black45, fontSize: 18, fontWeight: FontWeight.w900);
const h1Style = TextStyle(
    letterSpacing: 2.5,
    fontWeight: FontWeight.w800,
    fontSize: 30,
    color: Colors.black);

class IntroductionScreen extends StatefulWidget {
  @override
  _IntroductionScreenState createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  Future<void>_incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setBool('Intro', true);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        positionSlideIcon: 0.5,
        pages: [
          Container(
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 60)),
                Center(
                  child: Text('LETS \nCALCULATE YOUR BMI!', style: h1Style),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                    child: Text('HEY! CONNECT WITH ME!\n'
                        '@Damocles2x',
                        textAlign: TextAlign.center, style: h2Style)),


                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'SWIPE LEFT',
                      style: TextStyle(color: Colors.black54, fontSize: 15),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.chevron_left_outlined,
                      color: Colors.black54,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    Image.asset(
                      'assets/Black2.png',
                      scale: 1.5,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            color: Color(0xFF212121),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/abcd.jpg'),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 10)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text('THE \nIDEA IS SIMPLE',
                          style: TextStyle(
                              letterSpacing: 4.5,
                              fontWeight: FontWeight.w800,
                              fontSize: 30,
                              color: Colors.white)),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: Text('SLIDE YOUR HEIGHT, WEIGHT, AGE',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                              color: Colors.white54)),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'SWIPE LEFT',
                          style: TextStyle(color: Colors.white38, fontSize: 15),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.chevron_left_outlined,
                          color: Colors.white38,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/voila.gif'),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 100)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text('VOILA!!',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 60,
                              color: Colors.black54)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text('SHALL WE BEGIN?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 30,
                              color: Colors.black45)),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                            backgroundColor: Colors.black,
                            onPressed: () {
                              _incrementCounter();
                              Navigator
                                  .of(context)
                                  .pushReplacement(
                                  MaterialPageRoute(
                                  builder: (BuildContext context) => InputPage()));
                            },

                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            )),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
        slideIconWidget: Icon(
          Icons.arrow_back,
          size: 30,
          color: Colors.black,
        ),
      ),
    );
  }
}
