import 'package:flutter/material.dart';

class DexoCatTheme {
  Color accent = const Color(0xff00ccff);
  Color extraAccent = const Color(0xff0000ff);
  Color highlight = const Color(0xff80c0ff);
  Color disabled = const Color(0x62ffffff);
  Color splash = const Color(0xff00506a);
  Color background = const Color(0xff000e1a);
  Color widgetBackground = const Color(0xff00b9e8);
  Color error = const Color(0xffff5959);
  Color font = const Color(0xffffffff);

  late ThemeData darkTheme;

  DexoCatTheme() {
    darkTheme = ThemeData(
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            return accent;
          }),
        ),
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          color: font,
          fontFamily: 'Sarabun',
        ),
        bodyMedium: TextStyle(
          color: font,
          fontFamily: 'Sarabun',
        ),
        bodySmall: TextStyle(
          color: font,
        ),
        displayLarge: TextStyle(
          color: font,
          fontFamily: 'Sarabun',
        ),
        displayMedium: TextStyle(
          color: font,
          fontFamily: 'Sarabun',
        ),
        displaySmall: TextStyle(
          color: font,
          fontFamily: 'Sarabun',
        ),
        headlineLarge: TextStyle(
          color: font,
          fontFamily: 'Sarabun',
        ),
        headlineMedium: TextStyle(
          color: font,
          fontFamily: 'Sarabun',
        ),
        headlineSmall: TextStyle(
          color: font,
          fontFamily: 'Sarabun',
        ),
        labelLarge: TextStyle(
          color: font,
          fontFamily: 'Sarabun',
        ),
        labelMedium: TextStyle(
          color: font,
          fontFamily: 'Sarabun',
        ),
        labelSmall: TextStyle(
          color: font,
          fontFamily: 'Sarabun',
        ),
        titleLarge: TextStyle(
          color: font,
          fontFamily: 'Sarabun',
        ),
        titleMedium: TextStyle(
          color: font,
          fontFamily: 'Sarabun',
        ),
        titleSmall: TextStyle(
          color: font,
          fontFamily: 'Sarabun',
        ),
      ),
      scaffoldBackgroundColor: background,
      appBarTheme: AppBarTheme(
        backgroundColor: background,
        shadowColor: Colors.transparent,
        titleTextStyle: TextStyle(
          fontFamily: 'Sarabun',
          fontSize: 20,
          color: font,
        ),
      ),
      splashColor: splash,
      useMaterial3: true,
      canvasColor: Colors.transparent,
    );
  }

  ThemeData get dexoCatDarkTheme {
    return darkTheme;
  }
}
