import 'package:flutter/material.dart';

const COLOR_LIGHT_GREY = Color(0xFFF49454F);
const COLOR_DARK_GREY = Color(0xFF2C2A2A);

const COLOR_GREEN_ACCENT = Color(0xFF02783F);

const TextTheme TEXT_THEME_DEFAULT = TextTheme(
  displayLarge:
      TextStyle(fontSize: 96, fontWeight: FontWeight.w300, color: Colors.black),
  displayMedium:
      TextStyle(fontSize: 60, fontWeight: FontWeight.w400, color: Colors.black),
  displaySmall:
      TextStyle(fontSize: 48, fontWeight: FontWeight.w400, color: Colors.black),
  headlineLarge:
      TextStyle(fontSize: 40, fontWeight: FontWeight.w600, color: Colors.white),
  headlineMedium:
      TextStyle(fontSize: 34, fontWeight: FontWeight.w400, color: Colors.black),
  headlineSmall:
      TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.black),
  titleLarge:
      TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
  titleMedium:
      TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
  bodyLarge: TextStyle(
      fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFFFFFFFF)),
  bodyMedium:
      TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
  bodySmall: TextStyle(
      fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black54),
  labelLarge:
      TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
);

ThemeData appTheme = ThemeData(
  // fontFamily: 'Roboto',
  // primaryColor: COLOR_WHITE,
  textTheme: TEXT_THEME_DEFAULT,
  scaffoldBackgroundColor: const Color(0xFFF8FAFF),
);
