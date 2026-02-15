import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: const Color(0xFFFBFBFA),
  brightness: Brightness.light,
  textTheme: GoogleFonts.tajawalTextTheme().apply(
    bodyColor: Colors.black,
    displayColor: Colors.black,
  ),
  secondaryHeaderColor: const Color(0xff64748B),
  colorScheme: const ColorScheme.light(
    primary: Color(0xFFC5A059),
    secondary: Color(0xFF94A3B8),
    tertiary: Color(0xFFA9A68F),
    surface: Color(0xFFFBFBFA),
    surfaceContainer: Colors.white,
    surfaceContainerHigh: Color(0xFF94A3B8),
    surfaceContainerHighest: Color(0xFFF1F5F9),
    outline: Color(0xffF8FAFC),
    outlineVariant: Color(0xffF1F5F9),
    shadow: Colors.black,
  ),
);

ThemeData darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: const Color(0xFF0E1A2B),
  brightness: Brightness.dark,
  textTheme: GoogleFonts.tajawalTextTheme().apply(
    bodyColor: const Color(0xFFF4EBDD),
    displayColor: const Color(0xFFC9A227),
  ),
  secondaryHeaderColor: const Color(0xFFC9A227),
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFFF4EBDD),
    secondary: Color(0xFF579498),
    tertiary: Color(0xFFF4EBDD),
    surface: Color(0xFF0E1A2B),
    surfaceContainer: Color(0xFF1F3A5F),
    surfaceContainerHigh: Color(0xFF15263E),
    surfaceContainerHighest: Color(0xFF1C2E4A),
    outline: Color(0xFFB68B2C),
    outlineVariant: Color(0xFF2C6E73),
    shadow: Color(0xFFF4EBDD),
    onTertiary: Color(0xFF7A1E2C),
  ),
);
