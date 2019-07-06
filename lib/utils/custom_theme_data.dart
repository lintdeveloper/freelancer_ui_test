import 'package:flutter/material.dart';
import 'package:freelancer_ui_test/utils/colors.dart';

ThemeData customThemeData() {
  final baseTheme = ThemeData(
    fontFamily: "Avenir",
  );

  return baseTheme.copyWith(
    primaryColor: kPrimaryColor,
//    primaryColorDark: kPrimaryDark,
//    primaryColorLight: kPrimaryLight,
//    accentColor: kSecondaryColor,
//    bottomAppBarColor: kSecondaryDark,
    buttonColor: kSecondaryColor,
//    sliderTheme: SliderThemeData.fromPrimaryColors(
//      primaryColor: kPrimaryColor,
//      primaryColorDark: kPrimaryDark,
//      primaryColorLight: kPrimaryLight,
//      valueIndicatorTextStyle: TextStyle(),
//    ),
//    textTheme: TextTheme().copyWith(
//        subhead: TextStyle(
//          fontFamily: "SnackerComic",
//        )),
  );
}
