import 'package:flutter/material.dart';

import '../../../utils/extensions.dart';
import '../../flat_button.dart';

class EventsListFilterButton extends StatelessWidget {
  const EventsListFilterButton({
    Key? key,
    required this.onPressed,
    required this.title,
    required this.isPressed,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String title;
  final bool isPressed;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      title: title,
      onPressed: onPressed,
      backgroundColor:
          isPressed ? context.colors.secondary : Colors.transparent,
      borderColor: context.colors.secondary,
      titleColor: context.colors.primary,
      titleStyle: context.texts.body2.copyWith(
        fontWeight: FontWeight.w300,
      ),
      borderWidth: 1.0,
    );
  }
}
