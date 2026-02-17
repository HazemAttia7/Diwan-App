import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: const Color(0xFFFBFAFA),
  brightness: Brightness.light,
  textTheme: GoogleFonts.tajawalTextTheme().apply(
    bodyColor: const Color(0xFF395264),
    displayColor: const Color(0xFF86353F),
  ),
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF395264),
    secondary: Color(0xFF86353F),
    tertiary: Color(0xFFD8B284),
    surface: Color(0xFFF4E6E6),
    surfaceContainer: Colors.white,
    surfaceContainerHigh: Color(0xFFF9F1F1),
    surfaceContainerHighest: Color(0xFFF7DCDC),
    outline: Color(0xFFD6C2C2),
    outlineVariant: Color(0xFFD3DAE6),
    shadow: Color(0xFF000000),
  ),
);

ThemeData darkTheme = ThemeData.dark().copyWith(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF1D1D1D),
  textTheme: GoogleFonts.tajawalTextTheme().apply(
    bodyColor: const Color(0xFFBFD3E0),
    displayColor: const Color(0xFFE39AA4),
  ),
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFFBFD3E0),
    secondary: Color(0xFFE39AA4),
    tertiary: Color(0xFFF0CFA0),
    surface: Color(0xFF1D1D1D),
    surfaceContainer: Color(0xFF242424),
    surfaceContainerHigh: Color(0xFF2A2A2A),
    surfaceContainerHighest: Color(0xFF303030),
    outline: Color(0xFF4A4A4A),
    outlineVariant: Color(0xFF5C6A75),
    shadow: Color(0xFF000000),
  ),
);
