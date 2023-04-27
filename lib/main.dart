import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'domain/controller/navigation_controller.dart';
import 'domain/enum/routes.dart';
import 'generated/l10n.dart';
import 'utils/colors.dart';
import 'utils/extensions.dart';
import 'utils/texts.dart';
import 'utils/theme.dart';
import 'utils/theme_data.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final brightness = SchedulerBinding.instance.window.platformBrightness;
    final isDark = brightness == Brightness.dark;

    return AppTheme(
      data: isDark ? AppThemeData.light : AppThemeData.dark,
      colors: isDark ? AppColors.light : AppColors.dark,
      texts: isDark ? AppTextStyles.light : AppTextStyles.dark,
      child: Builder(
        builder: (context) => MaterialApp(
          title: 'FSP App',
          theme: context.theme.data,
          initialRoute: Routes.events.name,
          onGenerateRoute: NavigationController.generateRoute,
          debugShowCheckedModeBanner: false,
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
