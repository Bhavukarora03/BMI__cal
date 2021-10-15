import 'package:flutter/material.dart';



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
            color: Colors.black,
            size: 100.0,
          ),
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        )
      ]
    );
  }
}