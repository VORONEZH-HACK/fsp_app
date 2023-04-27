import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class AppColorsPalette {
  static const blueDark = Color(0xFF402FFF);
  static const redDark = Color(0xFFEC1D35);
  static const whiteDark = Color(0xFFEDEDED);
  static const blackDark = Color(0xFF1B1C21);
  static const grayDark = Color(0xFFC8C9CA);
}

class AppColors {
  AppColors({
    required this.background,
    required this.primary,
    required this.secondary,
    required this.label,
    required this.accent,
  });

  final Color background;
  final Color primary;
  final Color secondary;
  final Color accent;
  final Color label;

  // TODO: Light theme
  static AppColors get light => dark;

  static AppColors get dark => AppColors(
        background: AppColorsPalette.blackDark,
        primary: AppColorsPalette.whiteDark,
        secondary: AppColorsPalette.blueDark,
        accent: AppColorsPalette.redDark,
        label: AppColorsPalette.grayDark,
      );
}
