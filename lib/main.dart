import 'package:flutter/material.dart';
import 'package:bmi/settings.dart';
import 'package:bmi/screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: kcPrimary,
        scaffoldBackgroundColor: kcPrimary,
      ),
      home: InputPage(),
    );
  }
}
