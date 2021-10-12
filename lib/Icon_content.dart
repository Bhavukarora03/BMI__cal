import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constants.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.icons, this.label});

  final IconData icons;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icons,
          size: 60,
          color: Colors.black,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: labelTextStyle,
        )
      ],
    );
  }
}
