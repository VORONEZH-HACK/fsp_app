import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../domain/enum/routes.dart';
import '../../../domain/providers.dart';
import '../../../utils/assets.dart';
import '../../../utils/extensions.dart';
import '../../flat_button.dart';

class EventsListAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const EventsListAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isAuth = ref.watch(isAuthenticatedProvider);
    return AppBar(
      elevation: 0,
      backgroundColor: context.colors.background,
      titleSpacing: 28,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            AppAssets.logoTitle,
            height: 32,
          ),
          if (isAuth)
            IconButton(
              constraints: const BoxConstraints(),
              padding: EdgeInsets.zero,
              icon: const Icon(
                Icons.person_outline,
                size: 24,
              ),
              onPressed: () =>
                  Navigator.pushNamed(context, Routes.profile.name),
            )
          else
            FlatButton(
              padding: EdgeInsets.zero,
              title: context.localization.login,
              onPressed: () => Navigator.pushNamed(context, Routes.auth.name),
              titleColor: context.colors.primary,
              titleStyle: context.texts.title1.copyWith(
                fontWeight: FontWeight.bold,
              ),
              borderWidth: 1.0,
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
