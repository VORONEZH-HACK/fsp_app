import 'package:flutter/widgets.dart';

import '../generated/l10n.dart';
import 'colors.dart';
import 'texts.dart';
import 'theme.dart';

extension AppThemeExtension on BuildContext {
  AppTheme get theme => AppTheme.of(this);
  AppColors get colors => AppTheme.of(this).colors;
  AppTextStyles get texts => AppTheme.of(this).texts;
  S get localization => S.of(this);
}
