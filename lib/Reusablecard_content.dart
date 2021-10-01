import 'input_page.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardProperties});

  final Color colour;
  final Widget cardProperties;

  @override
  Widget build(BuildContext context) {
    return Container(

      child: cardProperties,
      margin: EdgeInsets.all(20),
      height: 200,
      width: 170,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(50.0),
      ),
    );
  }
}
