import 'package:flutter/material.dart';
import 'package:bmi_calculator/Reusablecard_content.dart';
import 'Constants.dart';

class Result extends StatefulWidget {

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('RESULTS'),
     ),
      body: ReCalculate() ,
    );
  }
}
class ReCalculate extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
      width: 400,
      height: KbottomContainerHeight,
      child: Center(
        child: Text(
          'RE-CALCULATE',
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
    );
  }
}

