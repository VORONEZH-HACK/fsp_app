import 'package:flutter/material.dart';

import 'colors.dart';

class AppTextStyles {
  AppTextStyles({
    required this.title1,
    required this.title2,
    required this.title3,
    required this.subtitle1,
    required this.subtitle2,
    required this.subtitle3,
    required this.body1,
    required this.body2,
    required this.body3,
    required this.caption1,
    required this.caption2,
    required this.caption3,
  });

  final TextStyle title1;
  final TextStyle title2;
  final TextStyle title3;

  final TextStyle subtitle1;
  final TextStyle subtitle2;
  final TextStyle subtitle3;

  final TextStyle body1;
  final TextStyle body2;
  final TextStyle body3;

  final TextStyle caption1;
  final TextStyle caption2;
  final TextStyle caption3;

  static AppTextStyles get light {
    final colors = AppColors.light;

    return AppTextStyles(
      title1: const TextStyle(),
      title2: const TextStyle(),
      title3: const TextStyle(),
      subtitle1: const TextStyle(),
      subtitle2: const TextStyle(),
      subtitle3: const TextStyle(),
      body1: const TextStyle(),
      body2: const TextStyle(),
      body3: const TextStyle(),
      caption1: const TextStyle(),
      caption2: const TextStyle(),
      caption3: const TextStyle(),
    );
  }

  static AppTextStyles get dark => light;
}
