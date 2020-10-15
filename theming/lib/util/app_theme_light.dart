import 'package:bmi_theming_complete/util/text_styles.dart';
import 'package:flutter/material.dart';
import 'color_palette.dart';

// Theme override for the light theme
class AppTheme {
  AppTheme();

  static ThemeData buildBmiTheme() {
    final ThemeData base = ThemeData.light();

    return base.copyWith(
      brightness: Brightness.light,

      primaryColor: kPrimaryBlueGrey,
      primaryColorLight: kPrimaryBlueGreyLight,
      primaryColorDark: kPrimaryBlueGreyDark,

      accentColor: kSecondaryAmber,

      scaffoldBackgroundColor: kScaffoldBackgroundLightGrey,

      textTheme: _buildBmiTextTheme(base.textTheme),

      // Defining the colorScheme
      colorScheme: base.colorScheme.copyWith(
        secondaryVariant: kSecondaryAmberDark,
        onPrimary: kOnPrimaryWhite,
        onSecondary: kOnSecondaryBlack,
      ),

      // By default takes the primaryColor and TextTheme headline6 style
      appBarTheme: base.appBarTheme.copyWith(
         color: kPrimaryBlueGreyDark,
         textTheme: base.textTheme.copyWith(
           headline6: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
       ),
     ),

      //Override for the default Card theme
      cardTheme: base.cardTheme.copyWith(
        color: kSecondaryAmber,
        elevation: 1.0,
      ),

      // Override for the default light button theme
      buttonTheme: base.buttonTheme.copyWith(
        buttonColor: kPrimaryBlueGrey,
        textTheme: ButtonTextTheme.primary,
        //Color to start filling the Buttons when pressed.
        splashColor: kPrimaryBlueGreyLight,
      ),

      // Override for the default Textfield style
      inputDecorationTheme: base.inputDecorationTheme.copyWith(
       enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kPrimaryBlueGreyDark,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        hintStyle: kTextHintStyle,

      ),

      // Overiding the icon theme
      iconTheme: base.iconTheme.copyWith(
       color: kOnSecondaryBlack,
        size: 26.0,
      ),
    );
  }

  // Method to create and return the text styles
  static _buildBmiTextTheme(TextTheme base) {
      return base
          .copyWith(
        headline6: kHeadline6Style,
        headline5: kHeadline5TextStyle,
        headline4: kHeadline4TextStyle,
        headline3: kHeadline3TextStyle,
        bodyText1: kBodyText1Style,
        bodyText2: TextStyle(
          color: kOnSecondaryBlack,
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
//     primary: kPrimaryBlueGrey,
//     primaryVariant: kPrimaryBlueGreyDark,
//     secondary: kSecondaryAmber,
//     secondaryVariant: kSecondaryAmberDark,
//     onPrimary: kOnPrimaryWhite,
//     onSecondary: kOnSecondaryBlack,
//     background: kBackgroundColor,
//     onBackground: kOnSecondaryBlack,
//     surface: kSurfaceColor,
//   ),
// );

