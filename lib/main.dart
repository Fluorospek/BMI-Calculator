import 'package:flutter/material.dart';

void main() => runApp(const BMICalc());

const Color InactiveCardColor = Color(0xFF1D1E33);

class BMICalc extends StatelessWidget {
  const BMICalc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        primaryColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Center(
          child: Text(
            'BMI Calculator',
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  screenHeight: screenHeight,
                  colour: InactiveCardColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  screenHeight: screenHeight,
                  colour: InactiveCardColor,
                ),
              ),
            ],
          ),
          Expanded(
            child: ReusableCard(
              screenHeight: screenHeight,
              colour: InactiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    screenHeight: screenHeight,
                    colour: InactiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    screenHeight: screenHeight,
                    colour: InactiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: screenHeight * 0.08,
            margin: EdgeInsets.only(
              top: 7.0,
            ),
            decoration: BoxDecoration(
              color: InactiveCardColor,
            ),
          )
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.screenHeight, required this.colour});

  final double screenHeight;
  Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.25,
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
