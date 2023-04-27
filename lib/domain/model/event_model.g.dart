// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventModel _$$_EventModelFromJson(Map<String, dynamic> json) =>
    _$_EventModel(
      name: json['name'] as String,
      minHackersCount: json['min'] as int,
      maxHackersCount: json['max'] as int,
      description: json['description'] as String,
      startDate: json['start'] as int,
      endDate: json['end'] as int,
      rating: (json['rating'] as num).toDouble(),
      place: json['place'] as String,
    );

Map<String, dynamic> _$$_EventModelToJson(_$_EventModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'min': instance.minHackersCount,
      'max': instance.maxHackersCount,
      'description': instance.description,
      'start': instance.startDate,
      'end': instance.endDate,
      'rating': instance.rating,
      'place': instance.place,
    };
