import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../domain/model/event_model.dart';
import '../../../utils/extensions.dart';
import 'events_list_item_description_statement.dart';
import 'events_list_more_button.dart';

class EventsListItem extends StatelessWidget {
  const EventsListItem({
    Key? key,
    required this.event,
  }) : super(key: key);

  final EventModel event;

  @override
  Widget build(BuildContext context) {
    final localization = context.localization;

    return Container(
      color: context.colors.primary,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              event.name,
              style: context.texts.title1.copyWith(
                color: context.colors.background,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            EventsListItemDescriptionStatement(
              statement: context.localization.event_date,
              text: DateFormat('dd-MM-yyyy').format(
                DateTime.fromMillisecondsSinceEpoch(event.startDate),
              ),
            ),
            EventsListItemDescriptionStatement(
              statement: context.localization.event_team,
              text: '${localization.event_date_from} '
                  '${event.minHackersCount} '
                  '${localization.event_date_to} '
                  '${event.maxHackersCount} '
                  '${localization.event_date_hackers}',
            ),
            EventsListItemDescriptionStatement(
              statement: context.localization.event_rating,
              text: event.rating.toString(),
            ),
            const SizedBox(height: 8),
            Text(
              event.description,
              softWrap: true,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: context.texts.body1.copyWith(
                color: context.colors.background,
                fontWeight: FontWeight.w200,
              ),
            ),
            const SizedBox(height: 18),
            const EventsListMoreButton(),
          ],
        ),
      ),
    );
  }
}
