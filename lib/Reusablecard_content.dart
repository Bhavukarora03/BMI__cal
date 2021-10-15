import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:bmi_calculator/Constants.dart';


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
        width: 1000,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
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
class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.iconInButton, this.onPressed});
  final IconData iconInButton;
  final Function onPressed;



  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Colors.black,
      elevation: 10.0,
      constraints: BoxConstraints.expand(width: 45, height: 45),
      child: Icon(iconInButton,size: 10,),
    );
  }
}

class BottomButton extends StatelessWidget {

  BottomButton({@required this.bottomButton, @required this.calText});

  final Function bottomButton;
  final String calText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: bottomButton,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
        width: 400,
        height: KbottomContainerHeight,
        child: Center(
          child: Text(
            calText,
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
    );
  }
}