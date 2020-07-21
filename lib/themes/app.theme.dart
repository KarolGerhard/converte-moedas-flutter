import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFF4765E1);
const accentColor = const Color(0xFFFFFFFF);

ThemeData appTheme() {
  return ThemeData(
    brightness: brightness,
    accentColor: accentColor,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Color(0xFFFAFAFA),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    textTheme: TextTheme(
      body1: new TextStyle(
        fontFamily: "Alegreya Sans SC",
      ),
      body2: TextStyle(
        fontFamily: "AlegreyaSansSC",
      ),
      button: TextStyle(
        fontFamily: "AlegreyaSansSC",
      ),
      caption: TextStyle(
        fontFamily: "AlegreyaSansSC",
      ),
      display1: TextStyle(
        fontFamily: "AlegreyaSansSC",
      ),
      display2: TextStyle(
        fontFamily: "AlegreyaSansSC",
      ),
      display3: TextStyle(
        fontFamily: "AlegreyaSansSC",
      ),
      display4: TextStyle(
        fontFamily: "AlegreyaSansSC",
      ),
      headline: TextStyle(
        fontFamily: "AlegreyaSansSC",
      ),
      overline: TextStyle(
        fontFamily: "AlegreyaSansSC",
      ),
      subhead: TextStyle(
        fontFamily: "AlegreyaSansSC",
      ),
      subtitle: TextStyle(
        fontFamily: "AlegreyaSansSC",
      ),
      title: TextStyle(
        fontFamily: "AlegreyaSansSC",
      ),
    ),
  );
}
