import 'package:flutter/material.dart';
import 'package:bmi/settings.dart';

class Sex extends StatelessWidget {
  final IconData icon;
  final String title;

  Sex({this.icon, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: klMacenter,
      children: <Widget>[
        Icon(
          icon,
          size: kIconSize,
        ),
        SizedBox(
          height: klSpaceing,
        ),
        Text(
          title,
          style: kfStyle1,
        ),
      ],
    );
  }
}
