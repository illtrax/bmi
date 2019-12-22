import 'package:flutter/material.dart';
import '../settings.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  BottomButton({
    @required this.text,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
  }
}
