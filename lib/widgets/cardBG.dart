import 'package:flutter/material.dart';
import '../settings.dart';

class CardBG extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onPress;

  CardBG({@required this.color, this.child, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
  }
}
