import 'package:flutter/material.dart';
import 'package:flutter_gpotter/internal/constants/app_colors.dart';
import 'package:flutter_gpotter/internal/constants/app_sizes.dart';
import 'package:google_fonts/google_fonts.dart';

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
          fontWeight: FontWeight.w500),
      headline4: GoogleFonts.amaticSc(
        color: textColorLight.withOpacity(0.7),
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w900,
      ),
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
      headline3: TextStyle(
        fontFamily: 'Grotesque',
        color: textColorLight.withOpacity(0.7),
        fontStyle: FontStyle.normal,
        fontSize: DataFromScreenSize.textSizeheadline6[value],
      ),
      headline4: GoogleFonts.amaticSc(
        color: textColorLight.withOpacity(0.7),
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w900,
        fontSize: DataFromScreenSize.textSizeheadline6[value],
      ),
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
