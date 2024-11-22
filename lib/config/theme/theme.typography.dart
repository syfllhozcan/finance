//import 'package:flutter/material.dart';

part of 'theme.dart';

TextTheme textTheme(String fontPrimary, String fontSecondary) => TextTheme(
      displayLarge: TextStyle(
        fontFamily: fontPrimary,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        fontFamily: fontPrimary,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
      displaySmall: TextStyle(
        fontFamily: fontPrimary,
        fontSize: 20,
        fontWeight: FontWeight.w300,
      ),
      headlineLarge: TextStyle(
        fontFamily: fontPrimary,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
      headlineMedium: TextStyle(
        fontFamily: fontPrimary,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      headlineSmall: TextStyle(
        fontFamily: fontPrimary,
        fontSize: 18,
        fontWeight: FontWeight.w200,
      ),
      titleLarge: TextStyle(
        fontFamily: fontSecondary,
        fontSize: 15,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: TextStyle(
        fontFamily: fontSecondary,
        height: 1.2,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
      ),
      titleSmall: TextStyle(
        fontFamily: fontSecondary,
        fontSize: 13,
        fontWeight: FontWeight.w300,
        letterSpacing: 0.10,
      ),
      labelLarge: TextStyle(
        fontSize: 13,
        fontFamily: fontSecondary,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.10,
      ),
      labelMedium: TextStyle(
        fontSize: 13,
        fontFamily: fontSecondary,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.50,
      ),
      labelSmall: TextStyle(
        fontSize: 14,
        fontFamily: fontSecondary,
        fontWeight: FontWeight.w300,
        letterSpacing: 0.50,
      ),
      bodyLarge: TextStyle(
        fontSize: 12,
        fontFamily: fontSecondary,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.50,
      ),
      bodyMedium: TextStyle(
        fontSize: 12,
        fontFamily: fontSecondary,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      bodySmall: TextStyle(
        fontSize: 10,
        fontFamily: fontSecondary,
        fontWeight: FontWeight.w400,
      ),
    );
