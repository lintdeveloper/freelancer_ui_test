import 'package:flutter/material.dart';
import 'package:freelancer_ui_test/utils/colors.dart';

ThemeData customThemeData() {
  final baseTheme = ThemeData(
    fontFamily: "Avenir",
  );

  return baseTheme.copyWith(
    primaryColor: kPrimaryColor,
    buttonColor: kSecondaryColor,
  );
}
