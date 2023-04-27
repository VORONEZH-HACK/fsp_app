import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed
class EventModel with _$EventModel {
  const factory EventModel({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'min') required int minHackersCount,
    @JsonKey(name: 'max') required int maxHackersCount,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'start') required int startDate,
    @JsonKey(name: 'end') required int endDate,
    @JsonKey(name: 'rating') required double rating,
    @JsonKey(name: 'place') required String place,
  }) = _EventModel;

  factory EventModel.fromJson(Map<String, Object?> json) =>
      _$EventModelFromJson(json);
}
