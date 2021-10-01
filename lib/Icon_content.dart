import 'package:flutter/material.dart';


class IconContent extends StatelessWidget {
  IconContent({@required this.icons, this.label})

  final IconData icons;
  final String label;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icons, size:60),

        SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFF8D8098),
          ),
        )
      ],
    );
  }
}