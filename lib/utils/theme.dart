import 'package:flutter/material.dart';

import 'colors.dart';
import 'texts.dart';

class AppTheme extends InheritedWidget {
  const AppTheme({
    super.key,
    required this.data,
    required this.colors,
    required this.texts,
    required super.child,
  });

  final ThemeData data;
  final AppColors colors;
  final AppTextStyles texts;

  static AppTheme of(BuildContext context) {
    AppTheme? theme = context.dependOnInheritedWidgetOfExactType();
    if (theme == null) {
      throw Exception('There is no AppTheme in widget tree!');
    }
    return theme;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return oldWidget != this;
  }
}
