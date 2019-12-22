import 'package:flutter/material.dart';
import 'dart:ui';

// Colors
Color kcPrimary = Color(0xff000D06);
Color kcAccent = Color(0xff05A66B);
Color kcAccentLight = Color(0x2905A66B);
Color kcCard = Color(0xff014023);
Color kcCardInactive = Color(0xff012615);
Color kcText = Color(0xff8d8e89);
Color kcNum = Colors.white;

//Icons
double kIconSize = 100;

// Text Styles
double kFontSize = 18;

TextStyle kfStyle1 = TextStyle(
  fontSize: kFontSize,
  color: kcText,
);

TextStyle kfStyle2 = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.w900,
  color: kcNum,
);

//Layout
double klSpaceing = 10;
BorderRadius klBorderRadius = BorderRadius.circular(10.0);
double klMargin = 5.0;
EdgeInsets klRowPadding = EdgeInsets.symmetric(horizontal: 5.0);
double klBottomContainerHeight = 80;
EdgeInsets klBottomBarTopPadding = EdgeInsets.only(top: 5.0);
MainAxisAlignment klMacenter = MainAxisAlignment.center;
