import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'constants.dart';
import 'bottum_button.dart';
import 'reusable_card.dart';

class ResultPage extends StatefulWidget {
  ResultPage(
      {required this.bmiResult,
      required this.textResult,
      required this.advice});

  final String? bmiResult;
  final String? textResult;
  final String? advice;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
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
            child: Container(
              height: screenHeight * 0.02,
              child: Text('Your Result'),
            ),
          ),
          Expanded(
            child: ReusableCard(
              screenHeight: screenHeight,
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('${widget.bmiResult?.toUpperCase()}'),
                  Text('${widget.textResult}'),
                  Text(
                    '${widget.advice}',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
              child: Container(
                height: screenHeight * 0.08,
                decoration: BoxDecoration(
                  color: kInactiveCardColor,
                ),
                child: Center(
                  child: Text(
                    'Hello',
                    style: kLabelstyle,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
