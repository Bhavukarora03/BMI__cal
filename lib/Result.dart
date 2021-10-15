import 'dart:ui';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/Reusablecard_content.dart';
import 'package:flutter/painting.dart';
import 'Constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ReCalculate extends StatelessWidget {
  ReCalculate(
      {@required this.score,
      @required this.bmiText,
      @required this.quoteToWorkout});

  final String bmiText;
  final String score;
  final String quoteToWorkout;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(2),
                alignment: Alignment.topCenter,
                child: Center(
                  child: Text(
                    'YOUR SCORE',
                    style: TextStyle(
                      letterSpacing: 2.0,
                        fontSize: 30,
                        color: Colors.black54,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: ReusableCard(
                colour: KcontainerColor,
                cardProperties: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmiText.toUpperCase(),
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w800),

                    ),
                    Text(
                      score,
                      style: TextStyle(
                          fontSize: 80,
                          color: Colors.black,
                          fontWeight: FontWeight.w900),
                    ),
                    DefaultTextStyle(
                      style: labelTextStyle,
                      textAlign: TextAlign.center,
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(quoteToWorkout,
                              speed: const Duration(milliseconds: 200),
                              textStyle:
                                  TextStyle(fontWeight: FontWeight.w900),textAlign: TextAlign.center),
                        ],
                        totalRepeatCount: 30,
                      ),
                    )

                    // ,Text(
                    //   quoteToWorkout,
                    //   textAlign: TextAlign.center,
                    //   style: TextStyle(color: Colors.black, fontSize: 20),
                    // ),
                  ],
                ),
              ),
            ),
            BottomButton(
                bottomButton: () {
                  Navigator.pop(
                      context,
                      CupertinoPageRoute(
                      builder: (context) => InputPage()));
                },
                calText: 'RE-CALCULATE')
          ],
        ));
  }
}
