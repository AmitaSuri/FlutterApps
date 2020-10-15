import 'package:bmi_calculator/util/color_palette.dart';
import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            // Adding Image
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/bmi.jpg'),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                (Theme.of(context).brightness == Brightness.light)
                    ? kGradientBeginColor : kDarkGradientBeginColor,
                (Theme.of(context).brightness == Brightness.light)
                    ? kGradientEndColor : kDarkGradientEndColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          height: 60,
        ),
      ],
    );
  }
}
