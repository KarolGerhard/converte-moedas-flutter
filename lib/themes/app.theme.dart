import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFFFFFFFF);
const accentColor = const Color(0xFFFFFFFF);

ThemeData appTheme() {
  return ThemeData(
    brightness: brightness,
    accentColor: accentColor,
    primaryColor: primaryColor,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    textTheme: TextTheme(
      button: TextStyle(
        fontFamily: "Roboto",
      ),
      caption: TextStyle(
        fontFamily: "Roboto",
      ),
    ),
  );
}
