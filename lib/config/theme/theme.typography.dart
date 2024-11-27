//import 'package:flutter/material.dart';

part of 'theme.dart';

TextTheme textTheme(String fontPrimary, String fontSecondary) => TextTheme(
      displayLarge: TextStyle(
        fontSize: 24,
        //fontFamily: fontPrimary,
        fontWeight: FontWeight.w600,
        color: ColorPalette.textColor,
      ),
      displayMedium: TextStyle(
        fontSize: 20,
        //fontFamily: fontPrimary,
        fontWeight: FontWeight.bold,
        color: ColorPalette.textColor,
      ),
      displaySmall: TextStyle(
        fontSize: 20,
        //fontFamily: fontPrimary,
        fontWeight: FontWeight.w600,
        color: ColorPalette.textColor,
      ),
      headlineLarge: TextStyle(
        fontSize: 18,
        //fontFamily: fontPrimary,
        fontWeight: FontWeight.bold,
        color: ColorPalette.textColor,
      ),
      headlineMedium: TextStyle(
        fontSize: 18,
        //fontFamily: fontPrimary,
        fontWeight: FontWeight.w600,
        color: ColorPalette.textColor,
      ),
      titleLarge: TextStyle(
        fontSize: 16,
        //fontFamily: fontPrimary,
        fontWeight: FontWeight.bold,
        color: ColorPalette.textColor,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        //fontFamily: fontPrimary,
        fontWeight: FontWeight.w600,
        color: ColorPalette.textColor,
      ),
      titleSmall: TextStyle(
        fontSize: 16,
        //fontFamily: fontPrimary,
        fontWeight: FontWeight.w500,
        color: ColorPalette.textColor,
      ),
      titleExtraSmall: TextStyle(
        fontSize: 16,
        //fontFamily: fontSecondary,
        fontWeight: FontWeight.w400,
        color: ColorPalette.textColor2,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        //fontFamily: fontPrimary,
        fontWeight: FontWeight.bold,
        color: ColorPalette.textColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        //fontFamily: fontPrimary,
        fontWeight: FontWeight.w600,
        color: ColorPalette.textColor,
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        //fontFamily: fontPrimary,
        fontWeight: FontWeight.w500,
        color: ColorPalette.textColor,
      ),
      bodyExtraSmall: TextStyle(
        fontSize: 16,
        //fontFamily: fontSecondary,
        fontWeight: FontWeight.w400,
        color: ColorPalette.textColor2,
      ),
      subtitleLarge: const TextStyle(
        fontSize: 14,
        //fontFamily: fontPrimary,
        fontWeight: FontWeight.bold,
        color: ColorPalette.textColor,
      ),
      subtitleMedium: TextStyle(
        fontSize: 14,
        //fontFamily: fontSecondary,
        fontWeight: FontWeight.w600,
        color: ColorPalette.textColor2,
      ),
      subtitleSmall: TextStyle(
        fontSize: 14,
        //fontFamily: fontSecondary,
        fontWeight: FontWeight.w500,
        color: ColorPalette.textColor2,
      ),
      subtitleExtraSmall: TextStyle(
        fontSize: 14,
        //fontFamily: fontSecondary,
        fontWeight: FontWeight.w400,
        color: ColorPalette.textColor2,
      ),
      hintLarge: TextStyle(
        fontSize: 12,
        //fontFamily: fontSecondary,
        fontWeight: FontWeight.w500,
        color: ColorPalette.textColor2,
      ),
      hintMedium: TextStyle(
        fontSize: 12,
        //fontFamily: fontSecondary,
        fontWeight: FontWeight.w400,
        color: ColorPalette.textColor2,
      ),
    );

/*
TextTheme textTheme(String fontPrimary, String fontSecondary) => TextTheme(
      /// display 30-24 black
      displayLarge: TextStyle(
        fontSize: 26,
        fontFamily: fontPrimary,
        fontWeight: FontWeight.bold,
        color: ColorPalette.textColor,
      ),
      displayMedium: TextStyle(
        fontSize: 24,
        fontFamily: fontPrimary,
        fontWeight: FontWeight.w600,
        color: ColorPalette.textColor,
      ),
      displaySmall: TextStyle(
        fontSize: 20,
        fontFamily: fontPrimary,
        fontWeight: FontWeight.w600,
        color: ColorPalette.textColor,
      ),
      displayExtraSmall: TextStyle(
        fontSize: 18,
        fontFamily: fontPrimary,
        fontWeight: FontWeight.w600,
        color: ColorPalette.textColor,
      ),
/*
      /// standout 20 - 18
      standoutLarge: TextStyle(
        fontSize: 20,
        fontFamily: fontPrimary,
        fontWeight: FontWeight.w600,
        color: ColorPalette.textColor,
      ),
      standoutMedium: TextStyle(
        fontSize: 18,
        fontFamily: fontPrimary,
        fontWeight: FontWeight.bold,
        color: ColorPalette.textColor,
      ),
      standoutSmall: TextStyle(
        fontSize: 18,
        fontFamily: fontPrimary,
        fontWeight: FontWeight.w600,
        color: ColorPalette.textColor,
      ),
      standoutExtraSmall: TextStyle(
        fontSize: 18,
        fontFamily: fontPrimary,
        fontWeight: FontWeight.w400,
        color: ColorPalette.textColor,
      ),
*/
      /// headline 16 black
      headlineLarge: TextStyle(
        fontSize: 16,
        fontFamily: fontPrimary,
        fontWeight: FontWeight.w600,
        color: ColorPalette.textColor,
      ),
      headlineMedium: TextStyle(
        fontSize: 16,
        fontFamily: fontPrimary,
        fontWeight: FontWeight.w500,
        color: ColorPalette.textColor,
      ),
      headlineSmall: TextStyle(
        fontSize: 16,
        fontFamily: fontPrimary,
        fontWeight: FontWeight.w400,
        color: ColorPalette.textColor,
      ),
      headlineExtraSmall: TextStyle(
        fontSize: 16,
        fontFamily: fontPrimary,
        fontWeight: FontWeight.w300,
        color: ColorPalette.textColor,
      ),

      /// title 16 grey
      titleLarge: TextStyle(
        fontSize: 16,
        fontFamily: fontSecondary,
        fontWeight: FontWeight.bold,
        color: ColorPalette.textColor2,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontFamily: fontSecondary,
        fontWeight: FontWeight.w600,
        color: ColorPalette.textColor2,
      ),
      titleSmall: TextStyle(
        fontSize: 16,
        fontFamily: fontSecondary,
        fontWeight: FontWeight.w500,
        color: ColorPalette.textColor2,
      ),
      titleExtraSmall: TextStyle(
        fontSize: 16,
        fontFamily: fontSecondary,
        fontWeight: FontWeight.w400,
        color: ColorPalette.textColor2,
      ),

      /// label 14 black
      labelLarge: TextStyle(
        fontSize: 14,
        fontFamily: fontSecondary,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.10,
        color: ColorPalette.textColor,
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        fontFamily: fontSecondary,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.50,
        color: ColorPalette.textColor,
      ),
      labelSmall: TextStyle(
        fontSize: 14,
        fontFamily: fontSecondary,
        fontWeight: FontWeight.w300,
        letterSpacing: 0.50,
        color: ColorPalette.textColor,
      ),
      labelExtraSmall: TextStyle(
        fontSize: 14,
        fontFamily: fontSecondary,
        fontWeight: FontWeight.w300,
        letterSpacing: 0.50,
        color: ColorPalette.textColor,
      ),

      /// body 14 grey
      bodyLarge: TextStyle(
        fontSize: 14,
        fontFamily: fontSecondary,
        fontWeight: FontWeight.w600,
        color: ColorPalette.textColor2,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontFamily: fontSecondary,
        fontWeight: FontWeight.w500,
        color: ColorPalette.textColor2,
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        fontFamily: fontSecondary,
        fontWeight: FontWeight.w400,
        color: ColorPalette.textColor2,
      ),
      bodyExtraSmall: TextStyle(
        fontSize: 14,
        fontFamily: fontSecondary,
        fontWeight: FontWeight.w300,
        color: ColorPalette.textColor2,
      ),

      /// subtitle 12 black
      subtitleLarge: TextStyle(
        fontSize: 12,
        fontFamily: fontSecondary,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.10,
        color: ColorPalette.textColor,
      ),
      subtitleMedium: TextStyle(
        fontSize: 12,
        fontFamily: fontSecondary,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.50,
        color: ColorPalette.textColor,
      ),
      subtitleSmall: TextStyle(
        fontSize: 12,
        fontFamily: fontSecondary,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.50,
        color: ColorPalette.textColor,
      ),
      subtitleExtraSmall: TextStyle(
        fontSize: 12,
        fontFamily: fontSecondary,
        fontWeight: FontWeight.w300,
        letterSpacing: 0.50,
        color: ColorPalette.textColor,
      ),

      /// hint 12 grey
      hintLarge: TextStyle(
        fontSize: 12,
        fontFamily: fontSecondary,
        fontWeight: FontWeight.w700,
        color: ColorPalette.textColor2,
      ),
      hintMedium: TextStyle(
        fontSize: 12,
        fontFamily: fontSecondary,
        fontWeight: FontWeight.w500,
        color: ColorPalette.textColor2,
      ),
      hintSmall: TextStyle(
        fontSize: 12,
        fontFamily: fontSecondary,
        fontWeight: FontWeight.w400,
        color: ColorPalette.textColor2,
      ),
      hintExtraSmall: TextStyle(
        fontSize: 12,
        fontFamily: fontSecondary,
        fontWeight: FontWeight.w300,
        color: ColorPalette.textColor2,
      ),
    );
    */
////////////////////////////////////////////////////////
/*
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
*/