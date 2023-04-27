import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/assets.dart';
import '../../../utils/extensions.dart';
import '../../flat_button.dart';

class EventsListAppBar extends StatelessWidget implements PreferredSizeWidget {
  const EventsListAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          FlatButton(
            padding: EdgeInsets.zero,
            title: context.localization.login,
            onPressed: () {},
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
