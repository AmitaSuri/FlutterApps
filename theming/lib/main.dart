import 'package:bmi_theming_complete/util/app_theme_dark.dart';
import 'package:bmi_theming_complete/util/app_theme_light.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';


final ThemeData _bmiTheme = AppTheme.buildBmiTheme();
final ThemeData _bmiThemeDark = AppThemeDark.buildBmiTheme();

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData.dark(),

      // theme: ThemeData.light().copyWith(
      //    primaryColor: Colors.red, // for appbars, navigation bars, etc
      //    accentColor: Colors.amber, //for FAB, etc.
      //    scaffoldBackgroundColor: Colors.black,
      //    textTheme: TextTheme(
      //       bodyText1: TextStyle(color: Colors.white),
      //    )
      // ),

      theme: _bmiTheme,
      darkTheme: _bmiThemeDark,
     //themeMode: ThemeMode.dark,

      home: HomeScreen(),
    );
  }
}
