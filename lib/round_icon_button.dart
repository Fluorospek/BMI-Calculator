import 'package:flutter/material.dart';
import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton(
      {required this.child,
      required this.function,
      required this.screenHeight,
      required this.screenWidth});

  final IconData child;
  final VoidCallback function;
  double screenHeight;
  double screenWidth;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(child),
      constraints: BoxConstraints.tightFor(
        width: screenWidth * 0.02,
        height: screenHeight * 0.02,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: function,
    );
  }
}
