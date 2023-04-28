// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'access_token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccessTokenModel _$AccessTokenModelFromJson(Map<String, dynamic> json) {
  return _AccessTokenModel.fromJson(json);
}

/// @nodoc
mixin _$AccessTokenModel {
  @JsonKey(name: 'accessToken')
  String get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessTokenModelCopyWith<AccessTokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessTokenModelCopyWith<$Res> {
  factory $AccessTokenModelCopyWith(
          AccessTokenModel value, $Res Function(AccessTokenModel) then) =
      _$AccessTokenModelCopyWithImpl<$Res, AccessTokenModel>;
  @useResult
  $Res call({@JsonKey(name: 'accessToken') String accessToken});
}

/// @nodoc
class _$AccessTokenModelCopyWithImpl<$Res, $Val extends AccessTokenModel>
    implements $AccessTokenModelCopyWith<$Res> {
  _$AccessTokenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccessTokenModelCopyWith<$Res>
    implements $AccessTokenModelCopyWith<$Res> {
  factory _$$_AccessTokenModelCopyWith(
          _$_AccessTokenModel value, $Res Function(_$_AccessTokenModel) then) =
      __$$_AccessTokenModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'accessToken') String accessToken});
}

/// @nodoc
class __$$_AccessTokenModelCopyWithImpl<$Res>
    extends _$AccessTokenModelCopyWithImpl<$Res, _$_AccessTokenModel>
    implements _$$_AccessTokenModelCopyWith<$Res> {
  __$$_AccessTokenModelCopyWithImpl(
      _$_AccessTokenModel _value, $Res Function(_$_AccessTokenModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
  }) {
    return _then(_$_AccessTokenModel(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccessTokenModel implements _AccessTokenModel {
  const _$_AccessTokenModel(
      {@JsonKey(name: 'accessToken') required this.accessToken});

  factory _$_AccessTokenModel.fromJson(Map<String, dynamic> json) =>
      _$$_AccessTokenModelFromJson(json);

  @override
  @JsonKey(name: 'accessToken')
  final String accessToken;

  @override
  String toString() {
    return 'AccessTokenModel(accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccessTokenModel &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccessTokenModelCopyWith<_$_AccessTokenModel> get copyWith =>
      __$$_AccessTokenModelCopyWithImpl<_$_AccessTokenModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccessTokenModelToJson(
      this,
    );
  }
}

abstract class _AccessTokenModel implements AccessTokenModel {
  const factory _AccessTokenModel(
          {@JsonKey(name: 'accessToken') required final String accessToken}) =
      _$_AccessTokenModel;

  factory _AccessTokenModel.fromJson(Map<String, dynamic> json) =
      _$_AccessTokenModel.fromJson;

  @override
  @JsonKey(name: 'accessToken')
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$_AccessTokenModelCopyWith<_$_AccessTokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}
