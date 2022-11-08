import 'package:flutter/material.dart';

import '../enums.dart';

//light theme
const primaryColor = Color(0xFFe8b639);
const primaryColorLight = Color(0xFFccfcfc);
const primaryColorDark = Color.fromRGBO(63, 45, 2, 1.0);
const secondaryColor = Color.fromARGB(255, 108, 180, 116);
const secondaryColorLight = Color(0xFFabd29c);
const textColorLight = Color(0xff0c2c02);
const textColorDark = Color.fromARGB(255, 131, 138, 102);
const secondaryColorDark = Color(0xFF4c503a);
const thirdColorDark = Color(0xff101300);
const thirdColorLight = Color(0xfff5f6f0);

const borderradiusCard = 16.0;
const elevationAll = 1.0;
const colorCardTwo = Color.fromARGB(255, 172, 251, 251);

abstract class DataFromScreenSize {
  //      ScreenSize { Small, Normal, Large, ExtraLarge }
  static const List<double> textSizebodytext1 = [10.0, 18.0, 24.0, 30.0];
  static const List<double> textSizesubtitle1 = [8.0, 16.0, 22.0, 28.0];
  static const List<double> textSizebutton = [10.0, 16.0, 24.0, 30.0];
  static const List<double> textSizeheadline6 = [15.0, 24.0, 34.0, 48.0];
  static const List<double> borderRarius = [10.0, 8.0, 18.0, 24.0];
  static const List<double> cardPadding = [6.0, 10.0, 14.0, 20.0];
  static const List<double> iconSize = [16.0, 25.0, 50.0, 80.0];
}

ThemeData myTheme(int value) {
  return ThemeData(
    scaffoldBackgroundColor: secondaryColor,
    brightness: Brightness.light,
    backgroundColor: secondaryColor,
    iconTheme: IconThemeData(size: DataFromScreenSize.iconSize[value]),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: primaryColorLight),
    inputDecorationTheme: InputDecorationTheme(
      filled: false,
      // selectIconColor
      fillColor: primaryColorLight,
      iconColor: secondaryColorDark,
      focusColor: primaryColorLight,
      border: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(DataFromScreenSize.borderRarius[value]),
      ),
      labelStyle: const TextStyle(color: secondaryColorLight),
      focusedBorder: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(DataFromScreenSize.borderRarius[value]),
        borderSide: const BorderSide(color: secondaryColorLight),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey),
        borderRadius:
            BorderRadius.circular(DataFromScreenSize.borderRarius[value]),
      ),
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: secondaryColorLight,
        titleTextStyle: TextStyle(
            fontSize: DataFromScreenSize.textSizeheadline6[value],
            color: secondaryColorDark,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: secondaryColorLight,
        selectedIconTheme: IconThemeData(
            size: DataFromScreenSize.iconSize[value] +
                DataFromScreenSize.iconSize[value] ~/ 5),
        unselectedIconTheme:
            IconThemeData(size: DataFromScreenSize.iconSize[value]),
        selectedItemColor: primaryColorLight,
        unselectedItemColor: secondaryColorDark),
    cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(DataFromScreenSize.borderRarius[value])),
        clipBehavior: Clip.antiAlias,
        color: primaryColorLight,
        shadowColor: primaryColorLight.withAlpha(128),
        elevation: elevationAll),
    textTheme: TextTheme(
      // appbar // card head //
      headline6: TextStyle(
          fontSize: DataFromScreenSize.textSizeheadline6[value],
          color: textColorLight,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700),
      headline5: TextStyle(
          fontSize: DataFromScreenSize.textSizeheadline6[value],
          color: textColorLight,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500),
      bodyText1: TextStyle(
          fontSize: DataFromScreenSize.textSizebodytext1[value],
          color: textColorLight,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600),
      subtitle1: TextStyle(
          fontSize: DataFromScreenSize.textSizesubtitle1[value],
          color: textColorLight,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600),
      button: TextStyle(
          fontSize: DataFromScreenSize.textSizebutton[value],
          color: textColorLight,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal),
    ),
  );
}

ThemeData myDarkTheme(int value) {
  return ThemeData(
    scaffoldBackgroundColor: primaryColorDark.withOpacity(0.7),
    brightness: Brightness.dark,
    backgroundColor: primaryColorDark,
    iconTheme: IconThemeData(size: DataFromScreenSize.iconSize[value]),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: textColorDark),
    inputDecorationTheme: InputDecorationTheme(
      filled: false,
      // selectIconColor
      fillColor: primaryColor,
      iconColor: secondaryColorLight,
      focusColor: primaryColorLight,
      border: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(DataFromScreenSize.borderRarius[value]),
      ),
      labelStyle: const TextStyle(color: textColorDark),
      focusedBorder: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(DataFromScreenSize.borderRarius[value]),
        borderSide: const BorderSide(color: secondaryColorLight),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey),
        borderRadius:
            BorderRadius.circular(DataFromScreenSize.borderRarius[value]),
      ),
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: primaryColorDark,
        titleTextStyle: TextStyle(
            fontSize: DataFromScreenSize.textSizeheadline6[value],
            color: textColorDark,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryColorDark,
        selectedIconTheme: IconThemeData(
            size: DataFromScreenSize.iconSize[value] +
                DataFromScreenSize.iconSize[value] ~/ 5),
        unselectedIconTheme:
            IconThemeData(size: DataFromScreenSize.iconSize[value]),
        selectedItemColor: primaryColor,
        unselectedItemColor: textColorDark),
    cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(DataFromScreenSize.borderRarius[value])),
        clipBehavior: Clip.antiAlias,
        color: secondaryColorDark.withOpacity(0.5),
        shadowColor: secondaryColorDark.withOpacity(0.7),
        elevation: elevationAll),
    textTheme: TextTheme(
      // appbar // card head //
      headline6: TextStyle(
          fontSize: DataFromScreenSize.textSizeheadline6[value],
          color: secondaryColorLight,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700),
      headline5: TextStyle(
          fontSize: DataFromScreenSize.textSizeheadline6[value],
          color: secondaryColorLight,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500),
      bodyText1: TextStyle(
          fontSize: DataFromScreenSize.textSizebodytext1[value],
          color: textColorDark,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600),
      subtitle1: TextStyle(
          fontSize: DataFromScreenSize.textSizesubtitle1[value],
          color: textColorDark,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600),
      button: TextStyle(
          fontSize: DataFromScreenSize.textSizebutton[value],
          color: textColorDark,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal),
    ),
  );
}
