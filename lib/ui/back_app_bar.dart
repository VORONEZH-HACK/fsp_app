import 'package:flutter/material.dart';

import '../utils/extensions.dart';

class BackAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BackAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(
          Icons.keyboard_backspace,
          color: context.colors.primary,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
