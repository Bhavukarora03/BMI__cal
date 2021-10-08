import 'package:flutter/material.dart';
import 'package:bmi_calculator/input_page.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardProperties, this.gestureDec});

  final Color colour;
  final Widget cardProperties;
  final Function gestureDec;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gestureDec,
      child: Container(

        child: cardProperties,
        margin: EdgeInsets.all(20),
        height: 1000,
        width: 170,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15.0),
            boxShadow:[
        BoxShadow(
        color: Colors.grey.withOpacity(0.5), //color of shadow
        spreadRadius: 10, //spread radius
        blurRadius: 14, // blur radius
        offset: Offset(0, 2), // changes position of shadow
      ),
      ],
        ),

      ),
    );
  }
}

