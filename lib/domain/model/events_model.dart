import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_model.dart';

part 'events_model.freezed.dart';
part 'events_model.g.dart';

@freezed
class EventsModel with _$EventsModel {
  const factory EventsModel({
    @JsonKey(name: 'events') required List<EventModel> events,
  }) = _EventsModel;

  factory EventsModel.fromJson(Map<String, Object?> json) =>
      _$EventsModelFromJson(json);
}
