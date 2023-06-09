// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventsModel _$EventsModelFromJson(Map<String, dynamic> json) {
  return _EventsModel.fromJson(json);
}

/// @nodoc
mixin _$EventsModel {
  @JsonKey(name: 'events')
  List<EventModel> get events => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventsModelCopyWith<EventsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsModelCopyWith<$Res> {
  factory $EventsModelCopyWith(
          EventsModel value, $Res Function(EventsModel) then) =
      _$EventsModelCopyWithImpl<$Res, EventsModel>;
  @useResult
  $Res call({@JsonKey(name: 'events') List<EventModel> events});
}

/// @nodoc
class _$EventsModelCopyWithImpl<$Res, $Val extends EventsModel>
    implements $EventsModelCopyWith<$Res> {
  _$EventsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_value.copyWith(
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventsModelCopyWith<$Res>
    implements $EventsModelCopyWith<$Res> {
  factory _$$_EventsModelCopyWith(
          _$_EventsModel value, $Res Function(_$_EventsModel) then) =
      __$$_EventsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'events') List<EventModel> events});
}

/// @nodoc
class __$$_EventsModelCopyWithImpl<$Res>
    extends _$EventsModelCopyWithImpl<$Res, _$_EventsModel>
    implements _$$_EventsModelCopyWith<$Res> {
  __$$_EventsModelCopyWithImpl(
      _$_EventsModel _value, $Res Function(_$_EventsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$_EventsModel(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventsModel implements _EventsModel {
  const _$_EventsModel(
      {@JsonKey(name: 'events') required final List<EventModel> events})
      : _events = events;

  factory _$_EventsModel.fromJson(Map<String, dynamic> json) =>
      _$$_EventsModelFromJson(json);

  final List<EventModel> _events;
  @override
  @JsonKey(name: 'events')
  List<EventModel> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'EventsModel(events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventsModel &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventsModelCopyWith<_$_EventsModel> get copyWith =>
      __$$_EventsModelCopyWithImpl<_$_EventsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventsModelToJson(
      this,
    );
  }
}

abstract class _EventsModel implements EventsModel {
  const factory _EventsModel(
          {@JsonKey(name: 'events') required final List<EventModel> events}) =
      _$_EventsModel;

  factory _EventsModel.fromJson(Map<String, dynamic> json) =
      _$_EventsModel.fromJson;

  @override
  @JsonKey(name: 'events')
  List<EventModel> get events;
  @override
  @JsonKey(ignore: true)
  _$$_EventsModelCopyWith<_$_EventsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
