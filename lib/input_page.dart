import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/Reusablecard_content.dart';
import 'package:bmi_calculator/Icon_content.dart';

const myContainersColor = Colors.white;
const activeCardColor = Colors.redAccent;
const inactiveCardColor = Colors.white;
const bottomContainerHeight = 60.0;
enum Gender { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    gestureDec: (){
                      selectedGender = Gender.Male;
                    },
                    colour: selectedGender == Gender.Male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardProperties: IconContent(
                        icons: FontAwesomeIcons.mars, label: 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    gestureDec: (){
                      selectedGender = Gender.Female;
                    },
                    colour: selectedGender == Gender.Female
                        ? activeCardColor
                        : inactiveCardColor,
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
                  colour: myContainersColor,
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: myContainersColor,
                ),
              ),
              Expanded(
                  child: ReusableCard(
                colour: myContainersColor,
              ))
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
            child: Center(
              child: Text(
                'CALCULATE',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.pink],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0, 1],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
