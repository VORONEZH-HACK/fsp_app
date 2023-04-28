import 'package:flutter/material.dart';

import 'colors.dart';

class AppTextStyles {
  AppTextStyles({
    required this.title1,
    required this.title2,
    required this.title3,
    required this.headline1,
    required this.headline2,
    required this.headline3,
    required this.body1,
    required this.body2,
    required this.body3,
  });

  final TextStyle title1;
  final TextStyle title2;
  final TextStyle title3;

  final TextStyle headline1;
  final TextStyle headline2;
  final TextStyle headline3;

  final TextStyle body1;
  final TextStyle body2;
  final TextStyle body3;

  static const _fontFamily = 'JetBrainsMono';

  static AppTextStyles get night {
    final colors = AppColors.night;

    return AppTextStyles(
      headline1: TextStyle(
        fontFamily: _fontFamily,
        color: colors.primary,
        fontSize: 32,
        height: 38 / 32,
      ),
      headline2: TextStyle(
        fontFamily: _fontFamily,
        color: colors.primary,
        fontSize: 28,
        height: 36 / 28,
      ),
      headline3: const TextStyle(),
      title1: TextStyle(
        fontFamily: _fontFamily,
        color: colors.primary,
        fontSize: 18,
        height: 28 / 18,
      ),
      title2: TextStyle(
        fontFamily: _fontFamily,
        color: colors.primary,
        fontSize: 16,
        height: 24 / 16,
      ),
      title3: const TextStyle(),
      body1: TextStyle(
        fontFamily: _fontFamily,
        color: colors.primary,
        fontSize: 16,
        height: 24 / 16,
      ),
      body2: TextStyle(
        fontFamily: _fontFamily,
        color: colors.primary,
        fontSize: 14,
        height: 20 / 14,
      ),
      body3: TextStyle(
        fontFamily: _fontFamily,
        color: colors.primary,
        fontSize: 12,
        height: 18 / 12,
      ),
    );
  }

  static AppTextStyles get day => night;
}
