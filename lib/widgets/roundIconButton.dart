import 'package:flutter/material.dart';
import '../settings.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  final Function onLongPress;
  RoundIconButton({
    @required this.icon,
    @required this.onPressed,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      fillColor: kcCardInactive,
      elevation: 5,
      onPressed: onPressed,
      onLongPress: onLongPress,
      constraints: BoxConstraints.tightFor(
        width: 48,
        height: 48,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: klBorderRadius,
      ),
    );
  }
}
