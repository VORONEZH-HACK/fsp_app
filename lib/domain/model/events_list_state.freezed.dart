// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventsListState {
  EventsModel? get events => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  EventFilters get filter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventsListStateCopyWith<EventsListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsListStateCopyWith<$Res> {
  factory $EventsListStateCopyWith(
          EventsListState value, $Res Function(EventsListState) then) =
      _$EventsListStateCopyWithImpl<$Res, EventsListState>;
  @useResult
  $Res call(
      {EventsModel? events,
      String? error,
      bool isError,
      bool isLoading,
      EventFilters filter});

  $EventsModelCopyWith<$Res>? get events;
}

/// @nodoc
class _$EventsListStateCopyWithImpl<$Res, $Val extends EventsListState>
    implements $EventsListStateCopyWith<$Res> {
  _$EventsListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = freezed,
    Object? error = freezed,
    Object? isError = null,
    Object? isLoading = null,
    Object? filter = null,
  }) {
    return _then(_value.copyWith(
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as EventsModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as EventFilters,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EventsModelCopyWith<$Res>? get events {
    if (_value.events == null) {
      return null;
    }

    return $EventsModelCopyWith<$Res>(_value.events!, (value) {
      return _then(_value.copyWith(events: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EventsListStateCopyWith<$Res>
    implements $EventsListStateCopyWith<$Res> {
  factory _$$_EventsListStateCopyWith(
          _$_EventsListState value, $Res Function(_$_EventsListState) then) =
      __$$_EventsListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EventsModel? events,
      String? error,
      bool isError,
      bool isLoading,
      EventFilters filter});

  @override
  $EventsModelCopyWith<$Res>? get events;
}

/// @nodoc
class __$$_EventsListStateCopyWithImpl<$Res>
    extends _$EventsListStateCopyWithImpl<$Res, _$_EventsListState>
    implements _$$_EventsListStateCopyWith<$Res> {
  __$$_EventsListStateCopyWithImpl(
      _$_EventsListState _value, $Res Function(_$_EventsListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = freezed,
    Object? error = freezed,
    Object? isError = null,
    Object? isLoading = null,
    Object? filter = null,
  }) {
    return _then(_$_EventsListState(
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as EventsModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as EventFilters,
    ));
  }
}

/// @nodoc

class _$_EventsListState implements _EventsListState {
  const _$_EventsListState(
      {this.events,
      this.error,
      this.isError = false,
      this.isLoading = false,
      this.filter = EventFilters.newest});

  @override
  final EventsModel? events;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final EventFilters filter;

  @override
  String toString() {
    return 'EventsListState(events: $events, error: $error, isError: $isError, isLoading: $isLoading, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventsListState &&
            (identical(other.events, events) || other.events == events) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, events, error, isError, isLoading, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventsListStateCopyWith<_$_EventsListState> get copyWith =>
      __$$_EventsListStateCopyWithImpl<_$_EventsListState>(this, _$identity);
}

abstract class _EventsListState implements EventsListState {
  const factory _EventsListState(
      {final EventsModel? events,
      final String? error,
      final bool isError,
      final bool isLoading,
      final EventFilters filter}) = _$_EventsListState;

  @override
  EventsModel? get events;
  @override
  String? get error;
  @override
  bool get isError;
  @override
  bool get isLoading;
  @override
  EventFilters get filter;
  @override
  @JsonKey(ignore: true)
  _$$_EventsListStateCopyWith<_$_EventsListState> get copyWith =>
      throw _privateConstructorUsedError;
}
