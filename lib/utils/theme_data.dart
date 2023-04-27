import 'package:flutter/material.dart';

import 'colors.dart';

class AppThemeData {
  static ThemeData get light => dark;

  static ThemeData get dark {
    final colors = AppColors.dark;
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: colors.label,
      appBarTheme: AppBarTheme(
        backgroundColor: colors.background,
      ),
    );
  }
}
