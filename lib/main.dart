import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/l10n.dart';
import 'ui/event_list/event_list_screen.dart';
import 'utils/colors.dart';
import 'utils/extensions.dart';
import 'utils/texts.dart';
import 'utils/theme.dart';
import 'utils/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = SchedulerBinding.instance.window.platformBrightness;
    final isDark = brightness == Brightness.dark;

    return AppTheme(
      data: isDark ? AppThemeData.dark : AppThemeData.light,
      colors: isDark ? AppColors.dark : AppColors.light,
      texts: isDark ? AppTextStyles.dark : AppTextStyles.light,
      child: Builder(
        builder: (context) => MaterialApp(
          title: 'Flutter Demo',
          theme: context.theme.data,
          home: const EventListScreen(),
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
        ),
      ),
    );
  }
}
