import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../settings.dart';
import '../widgets/cardBG.dart';
import '../widgets/sex.dart';
import '../widgets/roundIconButton.dart';
import '../widgets/bottomButton.dart';
import 'results_page.dart';
import '../calculatorBrain.dart';

enum Gender {
  male,
  female,
}

Gender selectedGender;
double userHeight = 170;
double userWeight = 60;
double userAge = 18;
Color maleCard = kcCardInactive;
Color femaleCard = kcCardInactive;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            // Gender Select
            Expanded(
              child: Padding(
                padding: klRowPadding,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: cardBG(
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        color: selectedGender == Gender.male
                            ? maleCard = kcCard
                            : maleCard = kcCardInactive,
                        child: Sex(
                          icon: FontAwesomeIcons.mars,
                          title: 'MALE',
                        ),
                      ),
                    ),
                    Expanded(
                      child: cardBG(
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        color: selectedGender == Gender.female
                            ? femaleCard = kcCard
                            : femaleCard = kcCardInactive,
                        child: Sex(
                          icon: FontAwesomeIcons.venus,
                          title: 'FEMALE',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Height Slider
            Expanded(
              child: Padding(
                padding: klRowPadding,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: cardBG(
                        color: kcCard,
                        child: Column(
                          mainAxisAlignment: klMacenter,
                          children: <Widget>[
                            Text(
                              'HEIGHT',
                              style: kfStyle1,
                            ),
                            Row(
                              mainAxisAlignment: klMacenter,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text(
                                  userHeight.toStringAsFixed(0),
                                  style: kfStyle2,
                                ),
                                Text(
                                  ' cm',
                                  style: kfStyle1,
                                ),
                              ],
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                activeTrackColor: Colors.white,
                                inactiveTrackColor: kcCardInactive,
                                thumbColor: kcAccent,
                                thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15,
                                ),
                                overlayShape: RoundSliderOverlayShape(
                                  overlayRadius: 30,
                                ),
                                overlayColor: kcAccentLight,
                              ),
                              child: Slider(
                                value: userHeight,
                                min: 120,
                                max: 220,
                                onChanged: (double newValue) {
                                  setState(() {
                                    userHeight = newValue;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Weight & Age
            Expanded(
              child: Padding(
                padding: klRowPadding,
                child: Row(
                  children: <Widget>[
                    // Weight
                    Expanded(
                      child: cardBG(
                        color: kcCard,
                        child: Column(
                          mainAxisAlignment: klMacenter,
                          children: <Widget>[
                            Text(
                              'WEIGHT',
                              style: kfStyle1,
                            ),
                            Row(
                              mainAxisAlignment: klMacenter,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text(
                                  userWeight.toStringAsFixed(0),
                                  style: kfStyle2,
                                ),
                                Text(
                                  ' kg',
                                  style: kfStyle1,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.00,
                            ),
                            Row(
                              mainAxisAlignment: klMacenter,
                              children: <Widget>[
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      userWeight--;
                                    });
                                  },
                                  onLongPress: () {
                                    setState(() {
                                      userWeight -= 10;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      userWeight++;
                                    });
                                  },
                                  onLongPress: () {
                                    setState(() {
                                      userWeight += 10;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    // Age
                    Expanded(
                      child: cardBG(
                        color: kcCard,
                        child: Column(
                          mainAxisAlignment: klMacenter,
                          children: <Widget>[
                            Text(
                              'AGE',
                              style: kfStyle1,
                            ),
                            Row(
                              mainAxisAlignment: klMacenter,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text(
                                  userAge.toStringAsFixed(0),
                                  style: kfStyle2,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.00,
                            ),
                            Row(
                              mainAxisAlignment: klMacenter,
                              children: <Widget>[
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      userAge--;
                                    });
                                  },
                                  onLongPress: () {
                                    setState(() {
                                      userAge -= 10;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      userAge++;
                                    });
                                  },
                                  onLongPress: () {
                                    setState(() {
                                      userAge += 10;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Bottom Button
            BottomButton(
              text: 'CALCULATE',
              onPressed: () {
                CalculatorBrain calc = CalculatorBrain(
                  height: userHeight.toInt(),
                  weight: userWeight.toInt(),
                );
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultsPage(
                              bmiResult: calc.calculateBMI(),
                              resultText: calc.getResult(),
                              interpretation: calc.getInterpretation(),
                            )));
              },
            ),
          ],
        ),
      ),
    );
  }
}
