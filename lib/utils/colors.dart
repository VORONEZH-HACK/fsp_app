import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class AppColorsPalette {
  static const blueNight = Color(0xFF402FFF);
  static const redNight = Color(0xFFEC1D35);
  static const whiteNight = Color(0xFFEDEDED);
  static const blackNight = Color(0xFF1B1C21);
  static const grayNight = Color(0xFFC8C9CA);
  static const darkGrayNight = Color(0xFF3A3C46);
}

class AppColors {
  AppColors({
    required this.background,
    required this.primary,
    required this.secondary,
    required this.label,
    required this.accent,
    required this.darkLabel,
  });

  final Color background;
  final Color primary;
  final Color secondary;
  final Color accent;
  final Color label;
  final Color darkLabel;

  // TODO: Light theme
  static AppColors get day => night;

  static AppColors get night => AppColors(
        background: AppColorsPalette.blackNight,
        primary: AppColorsPalette.whiteNight,
        secondary: AppColorsPalette.blueNight,
        accent: AppColorsPalette.redNight,
        label: AppColorsPalette.grayNight,
        darkLabel: AppColorsPalette.darkGrayNight,
      );
}
