import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/Reusablecard_content.dart';
import 'package:bmi_calculator/Icon_content.dart';

const myContainersColor = Color(0xFF1D1E33);
const bottomContainerHeight = 80.0;
const bottomContainerColor = Colors.pink;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: myContainersColor,
                  cardProperties: IconContent(icons: FontAwesomeIcons.mars, label: 'MALE')
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: myContainersColor,

                  cardProperties: IconContent(icons: FontAwesomeIcons.venus, label: 'FEMALE'),
                  ),
                ),
            ],
          ),),
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
              color: bottomContainerColor)
        ],
      ),
    );
  }
}



