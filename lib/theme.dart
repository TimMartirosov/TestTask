import 'package:flutter/material.dart';

final kDarkMode = ThemeData.dark().copyWith(
    textTheme: const TextTheme(
        headline1: TextStyle(
            fontSize: 36, fontFamily: 'Akronim-Regular', color: Colors.white70),
        headline2: TextStyle(
            fontSize: 26, fontFamily: 'Akronim-Regular', color: Colors.white)),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
          fontSize: 26, fontFamily: 'Akronim-Regular', color: Colors.white),
      color: Color.fromRGBO(50, 65, 85, 1),
    ));

final kLightMode = ThemeData.dark().copyWith(
    textTheme: const TextTheme(
        headline1: TextStyle(
            fontSize: 42, fontFamily: 'Akronim-Regular', color: Colors.white70),
        headline2: TextStyle(
            fontSize: 26, fontFamily: 'Akronim-Regular', color: Colors.white)),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
          fontSize: 26, fontFamily: 'Akronim-Regular', color: Colors.white),
      color: Color.fromRGBO(50, 65, 85, 1),
    ));
