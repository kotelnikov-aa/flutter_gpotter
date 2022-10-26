import 'package:flutter/material.dart';

//active icon
const primaryColor = Color(0xFFe8b639);
//card
const primaryColorLight = Color(0xFFccfcfc);
//false icon // card_text
const primaryColorDark = Color.fromRGBO(118, 88, 13, 1);
// button //
const secondaryColor = Color.fromARGB(255, 108, 180, 116);
//appbar favorite // buttons
const secondaryColorLight = Color(0xFFabd29c);
// text//
const secondaryColorDark = Color(0xFF4c503a);

const borderradiusCard = 16.0;
const elevationAll = 1.0;

ThemeData myTheme() => ThemeData(
      // scaffoldBackgroundColor: const Color.fromARGB(255, 180, 200, 160),
      scaffoldBackgroundColor: const Color.fromARGB(255, 108, 180, 116),
      brightness: Brightness.light,
      // backgroundColor: const Color.fromARGB(255, 180, 200, 160),
      backgroundColor: const Color.fromARGB(255, 108, 180, 116),
      //textfield
      textSelectionTheme:
          const TextSelectionThemeData(cursorColor: primaryColor),
      inputDecorationTheme: InputDecorationTheme(
        filled: false,
        fillColor: primaryColorLight,
        focusColor: primaryColorLight,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        labelStyle: const TextStyle(color: secondaryColorDark),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: const BorderSide(color: secondaryColorLight),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      cardTheme: const CardTheme(
        clipBehavior: Clip.antiAlias,
        // color: secondaryColor,
        color: primaryColorLight,
      ),
      textTheme: const TextTheme(
        // appbar // card head //
        headline6:
            TextStyle(color: secondaryColorDark, fontStyle: FontStyle.normal),
        bodyText1:
            TextStyle(color: secondaryColorDark, fontStyle: FontStyle.normal),
        subtitle1:
            TextStyle(color: secondaryColorDark, fontStyle: FontStyle.normal),
        button:
            TextStyle(color: secondaryColorDark, fontStyle: FontStyle.normal),
      ),
    );
