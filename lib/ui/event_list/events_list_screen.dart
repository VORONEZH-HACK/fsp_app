import 'package:flutter/material.dart';

import 'widgets/events_list.dart';
import 'widgets/events_list_app_bar.dart';
import 'widgets/no_glow_scroll_behavior.dart';

class EventsListScreen extends StatelessWidget {
  const EventsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: NoGlowScrollBehavior(),
      child: const Scaffold(
        appBar: EventsListAppBar(),
        body: EventsList(),
      ),
    );
  }
}
