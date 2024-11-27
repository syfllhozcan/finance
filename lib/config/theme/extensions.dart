import 'package:flutter/material.dart';

extension AppSize on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  Size get size => MediaQuery.of(this).size;
}

extension AppStyle on BuildContext {
  ThemeData get theme => Theme.of(this);
  // display
  TextStyle? get displaySmall => Theme.of(this).textTheme.displaySmall;
  TextStyle? get displayMedium => Theme.of(this).textTheme.displayMedium;
  TextStyle? get displayLarge => Theme.of(this).textTheme.displayLarge;

  // title
  TextStyle? get titleExtraSmall => Theme.of(this).textTheme.titleExtraSmall;
  TextStyle? get titleSmall => Theme.of(this).textTheme.titleSmall;
  TextStyle? get titleMedium => Theme.of(this).textTheme.titleMedium;
  TextStyle? get titleLarge => Theme.of(this).textTheme.titleLarge;

  // body
  TextStyle? get bodyExtraSmall => Theme.of(this).textTheme.bodyExtraSmall;
  TextStyle? get bodySmall => Theme.of(this).textTheme.bodySmall;
  TextStyle? get bodyMedium => Theme.of(this).textTheme.bodyMedium;
  TextStyle? get bodyLarge => Theme.of(this).textTheme.bodyLarge;

  TextStyle? get titleTextStyle => Theme.of(this).appBarTheme.titleTextStyle;

  // subtitle
  TextStyle? get subtitleExtraSmall =>
      Theme.of(this).textTheme.subtitleExtraSmall;
  TextStyle? get subtitleSmall => Theme.of(this).textTheme.subtitleSmall;
  TextStyle? get subtitleMedium => Theme.of(this).textTheme.subtitleMedium;
  TextStyle? get subtitleLarge => Theme.of(this).textTheme.subtitleLarge;

  // hint
  TextStyle? get hintMedium => Theme.of(this).textTheme.hintMedium;
  TextStyle? get hintLarge => Theme.of(this).textTheme.hintLarge;
}

extension AppColor<T> on BuildContext {
  Color get primary => Theme.of(this).colorScheme.primary;
  Color get onPrimary => Theme.of(this).colorScheme.onPrimary;
  Color get outline => Theme.of(this).colorScheme.outline;
  Color get surface => Theme.of(this).colorScheme.surface;
  Color get secondary => Theme.of(this).colorScheme.secondary;
  Color get onSecondary => Theme.of(this).colorScheme.onSecondary;
  Color get primaryContainer => Theme.of(this).colorScheme.primaryContainer;
  Color get secondaryContainer => Theme.of(this).colorScheme.secondaryContainer;
  Color get dividerColor => Theme.of(this).dividerColor;
  Color get backgroundColor => Theme.of(this).colorScheme.surface;
  Color get onBackgroundColor => Theme.of(this).colorScheme.onSurface;
  Color get black12 => Colors.black12;
  Color get white => Colors.white;
  List<Color> get buttonColor => [
        Theme.of(this).colorScheme.primary,
        Theme.of(this).colorScheme.onPrimary
      ];
  List<Color> get buttonColorSG => [
        Theme.of(this).colorScheme.secondary,
        Theme.of(this).colorScheme.onSecondary,
      ];
}

extension BottomNavigation<T> on BuildContext {
  IconThemeData? get unselectedIconTheme =>
      Theme.of(this).bottomNavigationBarTheme.unselectedIconTheme;
  IconThemeData? get selectedIconTheme =>
      Theme.of(this).bottomNavigationBarTheme.selectedIconTheme;
  BottomNavigationBarThemeData get bottomNavigationBarTheme =>
      Theme.of(this).bottomNavigationBarTheme;
}

/*
extension Translations on BuildContext {
  S get translate => S.of(this);
}
*/
extension Responsive on BuildContext {
  T responsive<T>(
    T defaultVal, {
    T? sm,
    T? md,
    T? lg,
    T? xl,
  }) {
    final wd = MediaQuery.of(this).size.width;
    return wd >= 1280
        ? (xl ?? lg ?? md ?? sm ?? defaultVal)
        : wd >= 1024
            ? (lg ?? md ?? sm ?? defaultVal)
            : wd >= 768
                ? (md ?? sm ?? defaultVal)
                : wd >= 640
                    ? (sm ?? defaultVal)
                    : defaultVal;
  }
}
