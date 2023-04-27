import 'package:flutter/material.dart';

import '../../../utils/extensions.dart';

class EventsListItemDescriptionStatement extends StatelessWidget {
  const EventsListItemDescriptionStatement({
    Key? key,
    required this.statement,
    required this.text,
  }) : super(key: key);

  final String statement;
  final String text;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: '$statement: ',
            style: context.texts.body1.copyWith(
              color: context.colors.secondary,
              fontWeight: FontWeight.w300,
            ),
          ),
          TextSpan(
            text: text,
            style: context.texts.body1.copyWith(
              color: context.colors.background,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
