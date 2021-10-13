import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/Reusablecard_content.dart';
import 'package:bmi_calculator/Icon_content.dart';
import 'package:bmi_calculator/Constants.dart';
import 'Result.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Kgender selectedGender;
  int heightValue = 180;
  int weightValue = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    gestureDec: () {
                      setState(() {
                        selectedGender = Kgender.Male;
                      });
                    },
                    colour: selectedGender == Kgender.Male
                        ? KactiveCardColor
                        : KinactiveCardColor,
                    cardProperties: IconContent(
                        icons: FontAwesomeIcons.mars, label: 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    gestureDec: () {
                      setState(() {
                        selectedGender = Kgender.Female;
                      });
                    },
                    colour: selectedGender == Kgender.Female
                        ? KactiveCardColor
                        : KinactiveCardColor,
                    cardProperties: IconContent(
                        icons: FontAwesomeIcons.venus, label: 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  cardProperties: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'HEIGHT',
                          style: labelTextStyle,
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Center(
                              child: Text(heightValue.toString(),
                                  style: KboldTextstyle),
                            ),
                            Text('cm', style: labelTextStyle),
                            Row(
                              children: [
                                SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                      // add slider properties in future
                                      ),
                                  child: Slider(
                                    value: heightValue.toDouble(),
                                    min: 100,
                                    max: 200,
                                    activeColor: Colors.black,
                                    onChanged: (double newValue) {
                                      setState(() {
                                        heightValue = newValue.round();
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ])
                    ],
                  ),
                  colour: KcontainerColor,
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  cardProperties: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: labelTextStyle,
                      ),
                      Text('(in Kgs)',style: TextStyle(fontSize: 16,color: Colors.black54)),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        weightValue.toString(),
                        style: KboldTextstyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          RoundIconButton(
                            iconInButton: FontAwesomeIcons.plus,
                              onPressed: (){setState(() {
                                weightValue++;
                              });}
                          ),

                          RoundIconButton(
                            iconInButton: FontAwesomeIcons.minus,
                              onPressed: (){setState(() {
                                weightValue++;
                              });}
                          )
                        ],
                      ),
                    ],
                  ),
                  colour: KcontainerColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardProperties: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: labelTextStyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        age.toString(),
                        style: KboldTextstyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          RoundIconButton(
                            iconInButton: FontAwesomeIcons.plus,
                            onPressed: (){setState(() {
                              age++;
                            });}
                          ),

                          RoundIconButton(
                            iconInButton: FontAwesomeIcons.minus,
                            onPressed: (){
                              setState(() {
                               age--;
                              });
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                  colour: KcontainerColor,
                ),
              )
            ],
          )),
          GestureDetector( onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Result()));
          },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
              width: 400,
              height: KbottomContainerHeight,
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
                //   gradient: LinearGradient(
                //   colors: [Colors., Colors.pink],
                //   begin: Alignment.topLeft,
                //   end: Alignment.bottomRight,
                //   stops: [0, 1],
                // ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


