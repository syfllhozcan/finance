part of 'theme.dart';

const darkColorScheme = ColorScheme(
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
/*
//import 'package:flutter/material.dart';

part of 'theme.dart';

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFA6C8FF),
  onPrimary: Color(0xFF00315F),
  primaryContainer: Color(0xFF004786),
  onPrimaryContainer: Color(0xFFD4E3FF),
  secondary: Color(0xFFFFB77C),
  onSecondary: Color(0xFF4D2700),
  secondaryContainer: Color(0xFF6D3900),
  onSecondaryContainer: Color(0xFFFFDCC2),
  tertiary: Color(0xFF00DFC2),
  onTertiary: Color(0xFF00382F),
  tertiaryContainer: Color(0xFF005045),
  onTertiaryContainer: Color(0xFF45FCDE),
  error: Color(0xFFFFB4AB),
  onError: Color(0xFF690005),
  errorContainer: Color(0xFF93000A),
  onErrorContainer: Color(0xFFFFDAD6),
  outline: Color(0xFF8D9199),
  surface: Color(0xFF121316),
  onSurface: Color(0xFFE3E2E6),
  onSurfaceVariant: Color(0xFFC3C6CF),
  inverseSurface: Color(0xFFE3E2E6),
  onInverseSurface: Color(0xFF1A1C1E),
  inversePrimary: Color(0xFF005FAF),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFA6C8FF),
  outlineVariant: Color(0xFF43474E),
  scrim: Color(0xFF000000),
);
*/