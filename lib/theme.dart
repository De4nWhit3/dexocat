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
      scaffoldBackgroundColor: background,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        titleTextStyle: TextStyle(
          fontFamily: 'Sarabun',
          fontSize: 20,
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
