part of 'theme.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: ColorPalette.buttonColorBlue, // Primary action color (Blue button)
  onPrimary: ColorPalette.white, // Text/icon color on primary
  primaryContainer: ColorPalette.cardBackgroundColor, // For primary containers
  onPrimaryContainer: ColorPalette.textColor, // Text on primary container

  secondary: ColorPalette.employmentTitleColor, // Secondary accent color
  onSecondary: ColorPalette.white, // Text/icon color on secondary
  secondaryContainer:
      ColorPalette.employmentSubTitleColor, // Secondary container
  onSecondaryContainer:
      ColorPalette.textColorSecondary, // Text on secondary container

  tertiary: ColorPalette.green, // A complementary green for additional elements
  onTertiary: ColorPalette.white, // Text/icon color on tertiary
  tertiaryContainer:
      ColorPalette.otpBoxColor, // Tertiary container (like OTP box)
  onTertiaryContainer: ColorPalette.textColor2, // Text on tertiary container

  error: ColorPalette.red, // Error color
  onError: ColorPalette.white, // Text/icon color on error
  errorContainer: Color(0xFFFFDAD6), // Subtle error container color
  onErrorContainer: Color(0xFF410002), // Text/icon color on error container

  outline: ColorPalette.borderColor, // Used for borders and outlines
  surface: ColorPalette.backgroundColor, // Background surface color
  onSurface: ColorPalette.textColor, // Text color on surface
  onSurfaceVariant: ColorPalette.textColor2, // Secondary text on surface
  inverseSurface: ColorPalette.dashboardCardColor, // Inverse surface color
  onInverseSurface: ColorPalette.white, // Text/icon color on inverse surface

  inversePrimary: ColorPalette.hintColor, // Inverse primary (hint text color)
  shadow: ColorPalette.black, // Shadow color
  surfaceTint: ColorPalette.buttonColorBlue, // Tint for surfaces

  outlineVariant: ColorPalette.borderColorDialog, // Variant outline color
  scrim: ColorPalette.backdrop, // Scrim color for modals
);

/////////////////////////////
/*
//import 'package:finance/config/theme/color_palette.dart';
//import 'package:flutter/material.dart';

part of 'theme.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: ColorPalette.primary,
  onPrimary: ColorPalette.primaryLight,
  primaryContainer: Color(0xFFD4E3FF),
  onPrimaryContainer: Color(0xFF001C3A),
  secondary: ColorPalette.secondary,
  onSecondary: ColorPalette.secondaryLight,
  secondaryContainer: Color(0xFFFFDCC2),
  onSecondaryContainer: Color(0xFF2E1500),
  tertiary: Color(0xFF006B5C),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFF45FCDE),
  onTertiaryContainer: Color(0xFF00201B),
  error: Color(0xFFBA1A1A),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFFFDAD6),
  onErrorContainer: Color(0xFF410002),
  outline: Color(0xFF73777F),
  surface: Color(0xFFFAF9FD),
  onSurface: Color.fromARGB(255, 39, 39, 39),
  onSurfaceVariant: Color(0xFF43474E),
  inverseSurface: Color(0xFF2F3033),
  onInverseSurface: Color(0xFFF1F0F4),
  inversePrimary: Color(0xFFA6C8FF),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF005FAF),
  outlineVariant: Color(0xFFC3C6CF),
  scrim: Color(0xFF000000),
);
*/