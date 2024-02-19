import 'package:car/util/constants.dart';
import 'package:flutter/material.dart';

///#####################################################################################
/// AppBarTheme
///#####################################################################################

class TAppBarTheme {
  TAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    iconTheme: IconThemeData(color: Colors.black, size: 24),
    
  );
}

///#####################################################################################
/// TextFormField - InputDecoration
///#####################################################################################

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static final lightInputDecorationTheme = InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: COLOR_LIGHT_GREY,
      suffixIconColor: COLOR_LIGHT_GREY,
      labelStyle: const TextStyle().copyWith(
        color: COLOR_LIGHT_GREY,
      ),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: COLOR_LIGHT_GREY)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: COLOR_LIGHT_GREY)),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: COLOR_LIGHT_GREY))
      //hintStyle:
      //errorStyle:
      );
}

///#####################################################################################
/// ElevatedButtonTheme
///#####################################################################################

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  static final lightElevatedButtonThme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: COLOR_GREEN_ACCENT,
      padding: const EdgeInsets.all(20),
      side: const BorderSide(color: COLOR_GREEN_ACCENT),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      minimumSize: const Size(200, 40),
      textStyle: const TextStyle(
          fontSize: 16,
          color: Colors.white,
          letterSpacing: 0.4,
          fontWeight: FontWeight.w500),
    ),
  );
}

///#####################################################################################
/// OutlinedButtonTheme
///#####################################################################################

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: COLOR_GREEN_ACCENT,
      backgroundColor: Colors.white,
      padding: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      // minimumSize: const Size(200, 40),
      textStyle: const TextStyle(
          fontSize: 16,
          color: Colors.white,
          letterSpacing: 0.4,
          fontWeight: FontWeight.w500),
    ),
  );
}
