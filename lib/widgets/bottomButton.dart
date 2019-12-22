import 'package:flutter/material.dart';
import '../settings.dart';

Widget bottomButton({
  String text,
  Function onPressed,
}) =>
    GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kfStyle2,
          ),
        ),
        color: kcAccent,
        margin: klBottomBarTopPadding,
        width: double.infinity,
        height: klBottomContainerHeight,
      ),
    );
