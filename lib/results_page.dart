import 'package:flutter/material.dart';
import 'constants.dart';
import 'bottum_button.dart';
import 'reusable_card.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Text('Your Result'),
          ),
          Expanded(
            child: ReusableCard(
              screenHeight: screenHeight,
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Normal'),
                  Text('18.3'),
                  Text(
                    'Your BMI reault is quite low',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            screenHeight: screenHeight,
            Title: 'RE-CALCULATE',
            Func: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
