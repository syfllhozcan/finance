import 'package:flutter/material.dart';

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
