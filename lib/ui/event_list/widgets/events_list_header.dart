import 'package:flutter/material.dart';

import '../../../utils/extensions.dart';
import 'events_list_filters.dart';

class EventsListHeader extends StatelessWidget {
  const EventsListHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.background,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 16.0),
        child: Column(
          children: [
            Text(
              context.localization.events_and_competitions_title,
              style: context.texts.headline2.copyWith(
                color: context.colors.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 18),
            Text(
              context.localization.events_and_competitions_subtitle,
              style: context.texts.body2.copyWith(
                color: context.colors.primary,
              ),
            ),
            const SizedBox(height: 8),
            const EventListFilters(),
          ],
        ),
      ),
    );
  }
}
