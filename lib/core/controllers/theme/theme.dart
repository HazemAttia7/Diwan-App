import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: const Color(0xFFF4EFE6),
  brightness: Brightness.light,
  textTheme: const TextTheme().apply(
    fontFamily: "Tajawal",
    bodyColor: const Color(0xFF2F5D62),
    displayColor: const Color(0xFF7A3E3E),
  ),
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF2F5D62),
    secondary: Color(0xFF7A3E3E),
    tertiary: Color(0xFFC2A878),
    surface: Color(0xFFF4EFE6),
    surfaceContainer: Color(0xFFFFFFFF),
    surfaceContainerHigh: Color(0xFFE8E1D4),
    surfaceContainerHighest: Color(0xFFF1EADF),
    outline: Color(0xFFD6CFC2),
    outlineVariant: Color(0xFFE6DFD3),
    shadow: Color(0xFF000000),
  ),
);

ThemeData darkTheme = ThemeData.dark().copyWith(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF1D1D1D),
  textTheme: const TextTheme().apply(
    fontFamily: "Tajawal",
    bodyColor: const Color(0xFFB8D4D7),
    displayColor: const Color(0xFFE3A8A8),
  ),
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFFB8D4D7),
    secondary: Color(0xFFE3A8A8),
    tertiary: Color(0xFFE7CFA4),
    surface: Color(0xFF1D1D1D),
    surfaceContainer: Color(0xFF242424),
    surfaceContainerHigh: Color(0xFF2A2A2A),
    surfaceContainerHighest: Color(0xFF303030),
    outline: Color(0xFF555555),
    outlineVariant: Color(0xFF666666),

    shadow: Color(0xFF000000),
  ),
);
