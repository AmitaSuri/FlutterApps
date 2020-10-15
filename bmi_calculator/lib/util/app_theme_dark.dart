import 'package:bmi_calculator/util/text_styles.dart';
import 'package:flutter/material.dart';
import 'color_palette.dart';

// Ovrriding the default dark theme
class AppThemeDark {
  AppThemeDark();

  static
  buildBmiTheme() {
    final ThemeData base = ThemeData.dark();

    return base.copyWith(
      brightness: Brightness.dark,

      primaryColor: kDarkPrimaryBlue,
      primaryColorLight: kDarkPrimaryBlueLight,

      accentColor: kDarkSecondaryGrey,

      scaffoldBackgroundColor: kDarkScaffoldBackgroundBlack,

      textTheme: _buildBmiTextTheme(base.textTheme),

      // Defining the colorScheme
      colorScheme: base.colorScheme.copyWith(
        secondaryVariant: kDarkSecondaryGreyLight,
        onPrimary: kDarkOnPrimaryWhite,
        onSecondary: kDarkOnSecondaryBlack,
      ),

      // By default takes the primaryColor and TextTheme headline6 style
      appBarTheme: base.appBarTheme.copyWith(
        color: kDarkThemeBlack,
        textTheme: base.textTheme.copyWith(
          headline6: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      // Ovrriding the default dark card theme
      cardTheme: base.cardTheme.copyWith(
        color: kDarkSecondaryGrey,
        elevation: 0.0,
      ),

      // Overriding the default button theme
      buttonTheme: base.buttonTheme.copyWith(
        buttonColor: kDarkPrimaryBlue,
        textTheme: ButtonTextTheme.primary,
        //Color to start filling the Buttons when pressed.
        splashColor: kDarkPrimaryBlueLight,
      ),

      // Ovveriding the default Textfield style
      inputDecorationTheme: base.inputDecorationTheme.copyWith(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kDarkPrimaryBlue,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        hintStyle: kTextHintStyle,

      ),

      // Overriding the default dark icon style
      iconTheme: base.iconTheme.copyWith(
        color: kDarkOnSecondaryBlack,
        size: 26.0,
      ),
    );
  }

  // Method to create and return text styles for the default dark theme
  static _buildBmiTextTheme(TextTheme base) {
    return base
        .copyWith(
      headline6: kHeadline6Style,
      headline5: kHeadline5TextStyle,
      headline4: kHeadline4TextStyle,
      headline3: kHeadline3TextStyle,
      bodyText1: kBodyText1Style,
      bodyText2:  TextStyle(
        color: kDarkOnPrimaryWhite,
        fontSize: 17.0,
        fontWeight: FontWeight.w600,
      ),
      button: kButtonTextStyle,
      caption: kCaptionStyle,
    )
        .apply(
      // This will override and apply to all.
      fontFamily: 'OpenSans',
    );
  }
}

/** For using colorScheme, override the other widget objects also.**/
// final ThemeData base = ThemeData.from(
//   colorScheme: ColorScheme(
// primary: kDarkPrimaryBlue,
// primaryVariant: kDarkPrimaryBlueLight,
// secondary:  kDarkSecondaryGrey,
// secondaryVariant: kDarkSecondaryGreyLight,
// onPrimary: kOnPrimaryWhite,
// onSecondary: kOnSecondaryBlack,
//   ),
// );

