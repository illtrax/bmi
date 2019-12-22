import 'package:flutter/material.dart';
import '../settings.dart';
import '../widgets/cardBG.dart';
import '../widgets/bottomButton.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultsPage({
    @required this.bmiResult,
    @required this.resultText,
    @required this.interpretation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    'Your Result',
                    style: kfStyle2,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: cardBG(
                color: kcCard,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        resultText.toUpperCase(),
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        bmiResult,
                        style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        interpretation,
                        style: TextStyle(
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            BottomButton(
              text: 'RE-CALCULATE',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
