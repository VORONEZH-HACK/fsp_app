import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/api/events_api.dart';
import '../enum/event_filters.dart';
import '../model/events_list_state.dart';
import '../model/events_model.dart';

class EventsListController extends StateNotifier<EventsListState> {
  EventsListController(this._api)
      : super(const EventsListState(isLoading: true));

  final EventsApi _api;

  bool get isLoading => state.isLoading;

  bool get isError => state.isError;

  String? get error => state.error;

  bool get hasData => state.events != null;

  EventFilters get filter => state.filter;

  EventsModel? get events => state.events;

  void setFilter(EventFilters newFilter) => state = state.copyWith(
        filter: newFilter,
      );

  Future<void> loadEvents(EventFilters filter) async {
    state = const EventsListState().copyWith(
      isLoading: true,
      filter: state.filter,
    );

    try {
      debugPrint('Loading');

      final startDate = DateTime.now();
      final endDate = startDate.add(const Duration(days: 6 * 30));
      final events = await _api.getEvents(
        filter: filter,
        startDate: startDate.millisecondsSinceEpoch,
        endDate: endDate.millisecondsSinceEpoch,
      );

      debugPrint('Loaded');

      state = const EventsListState().copyWith(
        events: events,
        filter: state.filter,
      );
    } on Object catch (e) {
      debugPrint('Error');

      state = const EventsListState().copyWith(
        isError: true,
        error: e.toString(),
        filter: state.filter,
      );
    }
  }
}
