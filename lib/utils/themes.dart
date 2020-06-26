import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color.dart';

final ThemeData appTheme = buildAppTheme();

ThemeData buildAppTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: kPrimaryColor,
    accentColor: kPrimaryColor,
    scaffoldBackgroundColor: kWhite,
    cardColor: kWhite,
    textSelectionColor: kPrimaryColor,
    errorColor: kErrorRed,
    textTheme: buildAppTextTheme(base.textTheme),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    buttonTheme: base.buttonTheme.copyWith(
      textTheme: ButtonTextTheme.normal,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      contentPadding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
      enabledBorder: new OutlineInputBorder(
        borderSide: new BorderSide(color: kPrimaryColor, width: 1),
      ),
      border: new OutlineInputBorder(
        borderSide: new BorderSide(color: kPrimaryColor, width: 1),
      ),
      disabledBorder: new OutlineInputBorder(
        borderSide: new BorderSide(color: kPrimaryColor, width: 1),
      ),
      focusedBorder: new OutlineInputBorder(
        borderSide: new BorderSide(color: kPrimaryColor, width: 1),
      ),
      errorBorder: new OutlineInputBorder(
        borderSide: new BorderSide(color: kErrorRed, width: 1),
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.black,
      indicatorSize: TabBarIndicatorSize.label,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kPrimaryColor,
      ),
    ),
  );
}

TextTheme buildAppTextTheme(TextTheme textTheme) {
  return GoogleFonts.poppinsTextTheme(textTheme).copyWith(
    headline1: textTheme.headline1,
    headline2: textTheme.headline2,
    headline3: textTheme.headline3,
    headline4: textTheme.headline4,
    headline5: textTheme.headline5.copyWith(
        color: kPrimaryColor, fontSize: 24.0, fontWeight: FontWeight.bold),
    headline6: textTheme.headline6,
    bodyText1: textTheme.bodyText1,
    bodyText2: textTheme.bodyText2.copyWith(color: kTextSecondaryColor),
    subtitle1: textTheme.subtitle1,
    subtitle2: textTheme.subtitle2,
    button: textTheme.button.copyWith(color: kWhite),
    caption: textTheme.caption.copyWith(color: kTextSecondaryColor),
    overline: textTheme.overline,
  );
}
