import 'package:flutter/material.dart';

import 'colors.dart';

class AppThemeData {
  static ThemeData get day => night;

  static ThemeData get night {
    final colors = AppColors.night;
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: colors.label,
      appBarTheme: AppBarTheme(
        backgroundColor: colors.background,
      ),
    );
  }
}
