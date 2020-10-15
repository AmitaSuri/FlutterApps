import 'package:bmi_theming_complete/util/color_palette.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  final double parameterValue;
  final String parameterName;
  final Function onChangedHandler;
  final double min;
  final double max;

  const CustomSlider({
    @required this.min,
    @required this.max,
    @required this.parameterValue, 
    @required this.parameterName, 
    @required this.onChangedHandler
  });

  @override
  Widget build(BuildContext context) {
    return Column(
       children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: <Widget>[
            Text(
              "$parameterName",
            ),
            Text("${parameterValue.toStringAsFixed(2)}")
          ],
        ),

        //Slider
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
                    thumbColor: Theme.of(context).primaryColor,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                    overlayColor:  Theme.of(context).primaryColorLight,
                    activeTrackColor: Theme.of(context).accentColor,
                    inactiveTrackColor: Theme.of(context).primaryColorLight,
                  ),
                  child: Slider(
            min: min,
            max: max,
            value: parameterValue,
            onChanged: onChangedHandler
           ),
        ),
      ],
    );
  }
}