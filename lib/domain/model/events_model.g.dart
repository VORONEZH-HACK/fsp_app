// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventsModel _$$_EventsModelFromJson(Map<String, dynamic> json) =>
    _$_EventsModel(
      events: (json['events'] as List<dynamic>)
          .map((e) => EventModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EventsModelToJson(_$_EventsModel instance) =>
    <String, dynamic>{
      'events': instance.events,
    };
