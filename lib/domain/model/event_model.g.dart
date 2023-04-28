// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventModel _$$_EventModelFromJson(Map<String, dynamic> json) =>
    _$_EventModel(
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      minHackersCount: json['min-participants'] as int,
      maxHackersCount: json['max-participants'] as int,
      description: json['description'] as String,
      startDate: json['start-date'] as int,
      endDate: json['end-date'] as int,
      rating: (json['rating'] as num).toDouble(),
      place: json['place'] as String,
    );

Map<String, dynamic> _$$_EventModelToJson(_$_EventModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'min-participants': instance.minHackersCount,
      'max-participants': instance.maxHackersCount,
      'description': instance.description,
      'start-date': instance.startDate,
      'end-date': instance.endDate,
      'rating': instance.rating,
      'place': instance.place,
    };
