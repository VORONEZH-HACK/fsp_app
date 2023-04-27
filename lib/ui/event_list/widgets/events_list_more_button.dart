import 'package:flutter/material.dart';

import '../../../utils/extensions.dart';

class EventsListMoreButton extends StatelessWidget {
  const EventsListMoreButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 38,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
            (state) => context.colors.secondary,
          ),
          foregroundColor: MaterialStateProperty.resolveWith(
            (state) => context.colors.primary,
          ),
          textStyle: MaterialStateProperty.resolveWith(
            (state) => context.texts.body2.copyWith(
              fontWeight: FontWeight.w200,
              color: context.colors.primary,
            ),
          ),
          elevation: MaterialStateProperty.resolveWith((states) => 0),
          shape: MaterialStateProperty.resolveWith(
            (states) => const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
        ),
        onPressed: () {},
        child: const Text('Подробнее'),
      ),
    );
  }
}
