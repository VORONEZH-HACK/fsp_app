import 'package:flutter/material.dart';

import '../../utils/extensions.dart';

class UnknownScreen extends StatelessWidget {
  const UnknownScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          context.localization.unknown_screen,
          style: context.texts.title2,
        ),
      ),
    );
  }
}
