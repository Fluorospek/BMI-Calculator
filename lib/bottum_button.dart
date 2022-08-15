import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton(
      {required this.screenHeight, required this.Title, required this.Func});

  final double screenHeight;
  final Function Func;
  final String Title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Func(),
      child: Container(
        height: screenHeight * 0.08,
        margin: EdgeInsets.only(
          top: 7.0,
        ),
        decoration: BoxDecoration(
          color: kInactiveCardColor,
        ),
        child: Center(
          child: Text(
            Title,
            style: kLabelstyle,
          ),
        ),
      ),
    );
  }
}
