// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

//active icon
const primaryColor = Color(0xFFe8b639);
//card
const primaryColorLight = Color(0xFFccfcfc);
//false icon // card_text
const primaryColorDark = Color(0xFF76580d);
// button //
const secondaryColor = Color(0xFF6cb474);
//appbar favorite // buttons
const secondaryColorLight = Color(0xFFabd29c);
// text//
const secondaryColorDark = Color(0xFF4c503a);

const borderradiusCard = 16.0;
const elevationAll = 1.0;

ThemeData MyTheme() => ThemeData(
      scaffoldBackgroundColor: const Color.fromARGB(255, 180, 200, 160),
      brightness: Brightness.light,
      backgroundColor: const Color.fromARGB(255, 180, 200, 160),
      cardTheme:
          const CardTheme(clipBehavior: Clip.antiAlias, color: secondaryColor),
      textTheme: const TextTheme(
        // appbar // card head //
        headline6: const TextStyle(
            color: secondaryColorDark, fontStyle: FontStyle.normal),
        bodyText1: const TextStyle(
            color: secondaryColorDark, fontStyle: FontStyle.normal),
        subtitle1: const TextStyle(
            color: secondaryColorDark, fontStyle: FontStyle.normal),
        button: const TextStyle(
            color: secondaryColorLight, fontStyle: FontStyle.normal),
      ),
    );
