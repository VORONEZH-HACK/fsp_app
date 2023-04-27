import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/enum/event_filters.dart';
import '../../../domain/providers.dart';
import '../../../generated/l10n.dart';
import '../../../utils/extensions.dart';
import 'events_list_filter_button.dart';

class EventListFilters extends ConsumerStatefulWidget {
  const EventListFilters({Key? key}) : super(key: key);

  @override
  ConsumerState<EventListFilters> createState() => _EventListFiltersState();
}

class _EventListFiltersState extends ConsumerState<EventListFilters> {
  final _filters = [
    EventFilters.newest,
    EventFilters.popular,
    EventFilters.best,
  ];

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(eventsListControllerProvider);
    final notifier = ref.watch(eventsListControllerProvider.notifier);

    return Row(
      children: List.generate(
        _filters.length,
        (index) {
          final item = _filters[index];
          return EventsListFilterButton(
            onPressed: () {
              if (controller.filter == _filters[index]) return;

              notifier.setFilter(item);
              notifier.loadEvents(item);
            },
            title: _getTitle(item, context.localization),
            isPressed: controller.filter == _filters[index],
          );
        },
      ),
    );
  }

  String _getTitle(EventFilters filter, S localization) {
    switch (filter) {
      case EventFilters.popular:
        return localization.event_filter_popular;
      case EventFilters.best:
        return localization.event_filter_best;
      case EventFilters.newest:
        return localization.event_filter_newest;
    }
  }
}
