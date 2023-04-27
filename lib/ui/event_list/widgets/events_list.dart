import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/enum/event_filters.dart';
import '../../../domain/model/event_model.dart';
import '../../../domain/providers.dart';
import '../../../utils/extensions.dart';
import '../../flat_button.dart';
import 'events_list_header.dart';
import 'events_list_item.dart';

class EventsList extends ConsumerStatefulWidget {
  const EventsList({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<EventsList> createState() => _EventsListState();
}

class _EventsListState extends ConsumerState<EventsList> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => ref
          .read(eventsListControllerProvider.notifier)
          .loadEvents(EventFilters.newest),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(eventsListControllerProvider);
    final notifier = ref.watch(eventsListControllerProvider.notifier);

    debugPrint('${controller.isError}');
    debugPrint('${controller.isLoading}');
    return ListView.builder(
      itemCount: controller.events?.events.length ?? 1 + 1,
      itemBuilder: (context, index) {
        if (index == 0) return const EventsListHeader();

        if (controller.isLoading) {
          return Center(
            child: LinearProgressIndicator(
              color: context.colors.secondary,
            ),
          );
        }

        if (controller.isError) {
          debugPrint(controller.error);

          return Padding(
            padding: const EdgeInsets.only(top: 144.0),
            child: Column(
              children: [
                Text(
                  context.localization.event_error,
                  textAlign: TextAlign.center,
                  style: context.texts.body2.copyWith(
                    color: context.colors.background,
                  ),
                ),
                const SizedBox(height: 16),
                FlatButton(
                  title: context.localization.retry,
                  onPressed: () async => notifier.loadEvents(controller.filter),
                  backgroundColor: context.colors.secondary,
                  borderColor: context.colors.secondary,
                  titleColor: context.colors.primary,
                  titleStyle: context.texts.body2,
                  borderWidth: 0.0,
                ),
              ],
            ),
          );
        }

        if (!notifier.hasData) {
          debugPrint('Warning! Something went wrong. No data.');
        }

        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 12.0),
          child: EventsListItem(
            event: EventModel(
              name: 'Хакатон в рамках Всероссийских соревнований '
                  'по спортивному программированию',
              minHackersCount: 3,
              maxHackersCount: 5,
              rating: 4.9,
              description:
                  '26-29 апреля пройдут первые Всероссийские соревнования по '
                  'спортивному программированию и Всероссийские соревнования',
              startDate: 1682599089,
              endDate: 1682699089,
              place: 'г. Воронеж',
            ),
          ),
        );
      },
    );
  }
}
