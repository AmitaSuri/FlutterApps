import 'package:bmi_calculator/widgets/bmi_result.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String userName;
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultScreen(
      {@required this.userName,
      @required this.interpretation,
      @required this.bmiResult,
      @required this.resultText});

  @override
  Widget build(BuildContext context) {
    ThemeData themeObj = Theme.of(context);
    return Theme(
      data: themeObj.copyWith(
        appBarTheme: themeObj.appBarTheme.copyWith(
          centerTitle: true,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Result',
                        style: themeObj.textTheme.headline5.copyWith(
                          color: themeObj.colorScheme.onSecondary,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: BmiResult(
                      userName: userName,
                      bmiResult: bmiResult,
                      resultText: resultText,
                      interpretation: interpretation,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: 40.0,
                    ),
                    child: BottomButton(
                      buttonTitle: 'RE-CALCULATE',
                      onPressedHandler: () => Navigator.pop(context),
                    ),
                  ),
                ],
              ),
            ),



    );
  }
}
