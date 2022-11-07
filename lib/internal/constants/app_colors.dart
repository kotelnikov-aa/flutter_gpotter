import 'package:flutter/material.dart';

//light theme
const primaryColor = Color(0xFFe8b639);
const primaryColorLight = Color(0xFFccfcfc);
const primaryColorDark = Color.fromRGBO(63, 45, 2, 1.0);
const secondaryColor = Color.fromARGB(255, 108, 180, 116);
const secondaryColorLight = Color(0xFFabd29c);
const textColorLight = Color(0xff0c2c02);
const secondaryColorDark = Color(0xFF4c503a);
const thirdColorDark = Color(0xff101300);
const thirdColorLight = Color(0xfff5f6f0);

const borderradiusCard = 16.0;
const elevationAll = 1.0;
const colorCardTwo = Color.fromARGB(255, 172, 251, 251);

abstract class DataFromScreenSize {
  //                    ScreenSize { Small, Normal, Large, ExtraLarge }
  static const List<double> textSizebodytext1 = [10.0, 18.0, 24.0, 30.0];
  static const List<double> textSizesubtitle1 = [10.0, 16.0, 24.0, 30.0];
  static const List<double> textSizebutton = [10.0, 16.0, 24.0, 30.0];
  static const List<double> textSizeheadline6 = [15.0, 24.0, 34.0, 48.0];
  static const List<double> borderRarius = [10.0, 8.0, 18.0, 24.0];
  static const List<double> cardPadding = [6.0, 10.0, 14.0, 20.0];

  static double getTextSizebodytext1(int value) => textSizebodytext1[value];
  static double getTextSizesubtitle1(int value) => textSizesubtitle1[value];
  static double getTextSizebutton(int value) => textSizebutton[value];
  static double getTextSizeheadline6(int value) => textSizeheadline6[value];
  static double getRadius(int value) => borderRarius[value];
  static double getCardPadding(int value) => cardPadding[value];
}

ThemeData myTheme(int value) {
  return ThemeData(
    scaffoldBackgroundColor: const Color.fromARGB(255, 108, 180, 116),
    brightness: Brightness.light,
    backgroundColor: const Color.fromARGB(255, 108, 180, 116),
    //textfield
    textSelectionTheme: const TextSelectionThemeData(cursorColor: primaryColorLight),
    inputDecorationTheme: InputDecorationTheme(
      filled: false,
      fillColor: primaryColorLight,
      focusColor: primaryColorLight,
      border: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(DataFromScreenSize.getRadius(value)),
      ),
      labelStyle: const TextStyle(color: secondaryColorLight),
      focusedBorder: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(DataFromScreenSize.getRadius(value)),
        borderSide: const BorderSide(color: secondaryColorLight),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey),
        borderRadius:
            BorderRadius.circular(DataFromScreenSize.getRadius(value)),
      ),
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(DataFromScreenSize.getRadius(value))),
      clipBehavior: Clip.antiAlias,
      color: primaryColorLight,
      shadowColor: thirdColorLight,
      elevation: elevationAll,
    ),

    textTheme: TextTheme(
      // appbar // card head //
      headline6: TextStyle(
          fontSize: DataFromScreenSize.getTextSizeheadline6(value),
          color: textColorLight,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700),
      headline5: TextStyle(
          fontSize: DataFromScreenSize.getTextSizeheadline6(value),
          color: textColorLight,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500),
      bodyText1: TextStyle(
          fontSize: DataFromScreenSize.getTextSizebodytext1(value),
          color: textColorLight,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600),
      subtitle1: TextStyle(
          fontSize: DataFromScreenSize.getTextSizesubtitle1(value),
          color: textColorLight,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600),
      button: TextStyle(
          fontSize: DataFromScreenSize.getTextSizebutton(value),
          color: textColorLight,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal),
    ),
  );
}

ThemeData myDarkTheme(int value) {
  return ThemeData(
    scaffoldBackgroundColor: const Color.fromARGB(255, 0, 19, 0),
    brightness: Brightness.dark,
    backgroundColor: const Color.fromARGB(255, 0, 19, 0),
    //textfield
    textSelectionTheme: const TextSelectionThemeData(cursorColor: primaryColorDark),
    inputDecorationTheme: InputDecorationTheme(
      filled: false,
      fillColor: primaryColorDark,
      focusColor: primaryColorDark,
      border: OutlineInputBorder(
        borderRadius:
        BorderRadius.circular(DataFromScreenSize.getRadius(value)),
      ),
      labelStyle: const TextStyle(color: secondaryColorDark),
      focusedBorder: OutlineInputBorder(
        borderRadius:
        BorderRadius.circular(DataFromScreenSize.getRadius(value)),
        borderSide: const BorderSide(color: secondaryColorDark),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey),
        borderRadius:
        BorderRadius.circular(DataFromScreenSize.getRadius(value)),
      ),
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
          borderRadius:
          BorderRadius.circular(DataFromScreenSize.getRadius(value))),
      clipBehavior: Clip.antiAlias,
      color: primaryColorDark,
      shadowColor: thirdColorDark,
      elevation: elevationAll,
    ),

    textTheme: TextTheme(
      // appbar // card head //
      headline6: TextStyle(
          fontSize: DataFromScreenSize.getTextSizeheadline6(value),
          color: secondaryColorDark,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700),
      headline5: TextStyle(
          fontSize: DataFromScreenSize.getTextSizeheadline6(value),
          color: secondaryColorDark,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500),
      bodyText1: TextStyle(
          fontSize: DataFromScreenSize.getTextSizebodytext1(value),
          color: secondaryColorDark,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600),
      subtitle1: TextStyle(
          fontSize: DataFromScreenSize.getTextSizesubtitle1(value),
          color: secondaryColorDark,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600),
      button: TextStyle(
          fontSize: DataFromScreenSize.getTextSizebutton(value),
          color: secondaryColorDark,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal),
    ),
  );
}