import 'package:flutter/material.dart';
import '../settings.dart';

Widget cardBG({
  Color color,
  Widget child,
  Function onPress,
}) =>
    GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        margin: EdgeInsets.all(klMargin),
        decoration: BoxDecoration(
          borderRadius: klBorderRadius,
          color: color,
        ),
      ),
    );
