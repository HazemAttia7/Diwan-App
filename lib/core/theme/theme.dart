import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: const Color(0xFFFBFBFA),
  brightness: Brightness.light,
  textTheme: GoogleFonts.tajawalTextTheme().apply(
    bodyColor: Colors.black,
    displayColor: Colors.black,
  ),
  colorScheme: const ColorScheme.light(
    primary: Color(0xFFC5A059),
    secondary: Color(0xFF94A3B8),
    surface: Color(0xFFFBFBFA),
    surfaceContainer: Colors.white,
    surfaceContainerHighest: Color(0xFFF1F5F9),
    outline: Color(0xffF8FAFC),
    outlineVariant: Color(0xffF1F5F9),
    shadow: Colors.white,
  ),
);

ThemeData darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: const Color(0xff14130B),
  brightness: Brightness.dark,
  textTheme: GoogleFonts.tajawalTextTheme().apply(
    bodyColor: Colors.white,
    displayColor: Colors.white,
  ),
  colorScheme: const ColorScheme.dark(
    primary: Color(0xffB7A477),
    secondary: Color(0xff938C72),
    surface: Color(0xff14130B),
    surfaceContainer: Color(0xff272411),
    surfaceContainerHighest: Color(0xFF37321F),
    outline: Color(0xff272411),
    outlineVariant: Color(0xff4C493F),
    shadow: Colors.white,
  ),
  shadowColor: Colors.grey.shade700,
);
