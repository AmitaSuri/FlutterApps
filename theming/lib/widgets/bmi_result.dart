import 'package:bmi_theming_complete/util/color_palette.dart';
import 'package:bmi_theming_complete/util/text_styles.dart';
import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final String userName;
  final String bmiResult;
  final String resultText;
  final String interpretation;

  const BmiResult({
    @required this.userName,
    @required this.bmiResult,
    @required this.resultText,
    @required this.interpretation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          side: BorderSide(color: Theme.of(context).primaryColor),
        ),
         child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                  (userName != '' && resultText != '') ? "$userName, you are $resultText." : '',
                  style: Theme.of(context).textTheme.headline3.copyWith(
                    color: Colors.blue[900],
                    fontFamily: 'QuickSand',
                  ),
              ),

             Text(
                (bmiResult != '') ? "$bmiResult" : "BMI",
                style: Theme.of(context).textTheme.headline4.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
                      Text(
                (interpretation != '') ? '$interpretation' : '',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
