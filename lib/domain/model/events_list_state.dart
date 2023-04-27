import 'package:freezed_annotation/freezed_annotation.dart';

import '../enum/event_filters.dart';
import 'events_model.dart';

part 'events_list_state.freezed.dart';

@freezed
class EventsListState with _$EventsListState {
  const factory EventsListState({
    EventsModel? events,
    String? error,
    @Default(false) bool isError,
    @Default(false) bool isLoading,
    @Default(EventFilters.newest) EventFilters filter,
  }) = _EventsListState;
}
