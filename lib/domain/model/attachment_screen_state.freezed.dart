// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attachment_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AttachmentScreenState {
  File? get data => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get isAgreementAccepted => throw _privateConstructorUsedError;
  bool get isSelecting => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AttachmentScreenStateCopyWith<AttachmentScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentScreenStateCopyWith<$Res> {
  factory $AttachmentScreenStateCopyWith(AttachmentScreenState value,
          $Res Function(AttachmentScreenState) then) =
      _$AttachmentScreenStateCopyWithImpl<$Res, AttachmentScreenState>;
  @useResult
  $Res call(
      {File? data,
      String? error,
      bool isAgreementAccepted,
      bool isSelecting,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$AttachmentScreenStateCopyWithImpl<$Res,
        $Val extends AttachmentScreenState>
    implements $AttachmentScreenStateCopyWith<$Res> {
  _$AttachmentScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
    Object? isAgreementAccepted = null,
    Object? isSelecting = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as File?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isAgreementAccepted: null == isAgreementAccepted
          ? _value.isAgreementAccepted
          : isAgreementAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelecting: null == isSelecting
          ? _value.isSelecting
          : isSelecting // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttachmentScreenStateCopyWith<$Res>
    implements $AttachmentScreenStateCopyWith<$Res> {
  factory _$$_AttachmentScreenStateCopyWith(_$_AttachmentScreenState value,
          $Res Function(_$_AttachmentScreenState) then) =
      __$$_AttachmentScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {File? data,
      String? error,
      bool isAgreementAccepted,
      bool isSelecting,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$_AttachmentScreenStateCopyWithImpl<$Res>
    extends _$AttachmentScreenStateCopyWithImpl<$Res, _$_AttachmentScreenState>
    implements _$$_AttachmentScreenStateCopyWith<$Res> {
  __$$_AttachmentScreenStateCopyWithImpl(_$_AttachmentScreenState _value,
      $Res Function(_$_AttachmentScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
    Object? isAgreementAccepted = null,
    Object? isSelecting = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$_AttachmentScreenState(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as File?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isAgreementAccepted: null == isAgreementAccepted
          ? _value.isAgreementAccepted
          : isAgreementAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelecting: null == isSelecting
          ? _value.isSelecting
          : isSelecting // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AttachmentScreenState implements _AttachmentScreenState {
  const _$_AttachmentScreenState(
      {this.data,
      this.error,
      this.isAgreementAccepted = false,
      this.isSelecting = false,
      this.isLoading = false,
      this.isError = false});

  @override
  final File? data;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool isAgreementAccepted;
  @override
  @JsonKey()
  final bool isSelecting;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;

  @override
  String toString() {
    return 'AttachmentScreenState(data: $data, error: $error, isAgreementAccepted: $isAgreementAccepted, isSelecting: $isSelecting, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttachmentScreenState &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isAgreementAccepted, isAgreementAccepted) ||
                other.isAgreementAccepted == isAgreementAccepted) &&
            (identical(other.isSelecting, isSelecting) ||
                other.isSelecting == isSelecting) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, error, isAgreementAccepted,
      isSelecting, isLoading, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttachmentScreenStateCopyWith<_$_AttachmentScreenState> get copyWith =>
      __$$_AttachmentScreenStateCopyWithImpl<_$_AttachmentScreenState>(
          this, _$identity);
}

abstract class _AttachmentScreenState implements AttachmentScreenState {
  const factory _AttachmentScreenState(
      {final File? data,
      final String? error,
      final bool isAgreementAccepted,
      final bool isSelecting,
      final bool isLoading,
      final bool isError}) = _$_AttachmentScreenState;

  @override
  File? get data;
  @override
  String? get error;
  @override
  bool get isAgreementAccepted;
  @override
  bool get isSelecting;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_AttachmentScreenStateCopyWith<_$_AttachmentScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
