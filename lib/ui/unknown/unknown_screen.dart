import 'package:flutter/material.dart';

import '../../utils/extensions.dart';
import '../back_app_bar.dart';

class UnknownScreen extends StatelessWidget {
  const UnknownScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BackAppBar(),
      backgroundColor: context.colors.background,
      body: Center(
        child: Text(
          context.localization.unknown_screen,
          style: context.texts.title2.copyWith(
            color: context.colors.primary,
          ),
        ),
      ),
    );
  }
}
