import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: const Color(0xFFFF9D01),
    // primaryColorDark:
    // primaryColorLight:
    scaffoldBackgroundColor: const Color.fromARGB(255, 243, 243, 243),
    fontFamily: GoogleFonts.lato().fontFamily,
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      toolbarHeight: 70,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Color(
          0xFFFF9D01,
        ),
      ),
      titleTextStyle: TextStyle(
        color: Color(0xFFFF9D01),
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          Color(0xFFFF9D01),
        ),
      ),
    ),
    iconTheme: const IconThemeData(
      color: Color(
        0xFFFF9D01,
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: Color(0xFF161616),
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      displayMedium: TextStyle(
        color: Color(0xFFFF9D01),
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      displaySmall: TextStyle(
        color: Color(0xFF161616),
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        color: Color(0xFF161616),
        fontWeight: FontWeight.normal,
        fontSize: 16,
      ),
      bodySmall: TextStyle(
        color: Color(0xFF161616),
        fontWeight: FontWeight.normal,
        fontSize: 12,
      ),
      labelSmall: TextStyle(
        color: Color(0xFFFFFFFF),
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      labelMedium: TextStyle(
        color: Color(0xFFFFFFFF),
        fontWeight: FontWeight.normal,
        fontSize: 16,
      ),
    ),
  );
}
