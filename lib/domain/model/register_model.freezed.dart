// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) {
  return _RegisterModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterModel {
  @JsonKey(name: 'data')
  AccessTokenModel get tokenModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterModelCopyWith<RegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterModelCopyWith<$Res> {
  factory $RegisterModelCopyWith(
          RegisterModel value, $Res Function(RegisterModel) then) =
      _$RegisterModelCopyWithImpl<$Res, RegisterModel>;
  @useResult
  $Res call({@JsonKey(name: 'data') AccessTokenModel tokenModel});

  $AccessTokenModelCopyWith<$Res> get tokenModel;
}

/// @nodoc
class _$RegisterModelCopyWithImpl<$Res, $Val extends RegisterModel>
    implements $RegisterModelCopyWith<$Res> {
  _$RegisterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenModel = null,
  }) {
    return _then(_value.copyWith(
      tokenModel: null == tokenModel
          ? _value.tokenModel
          : tokenModel // ignore: cast_nullable_to_non_nullable
              as AccessTokenModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccessTokenModelCopyWith<$Res> get tokenModel {
    return $AccessTokenModelCopyWith<$Res>(_value.tokenModel, (value) {
      return _then(_value.copyWith(tokenModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RegisterModelCopyWith<$Res>
    implements $RegisterModelCopyWith<$Res> {
  factory _$$_RegisterModelCopyWith(
          _$_RegisterModel value, $Res Function(_$_RegisterModel) then) =
      __$$_RegisterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') AccessTokenModel tokenModel});

  @override
  $AccessTokenModelCopyWith<$Res> get tokenModel;
}

/// @nodoc
class __$$_RegisterModelCopyWithImpl<$Res>
    extends _$RegisterModelCopyWithImpl<$Res, _$_RegisterModel>
    implements _$$_RegisterModelCopyWith<$Res> {
  __$$_RegisterModelCopyWithImpl(
      _$_RegisterModel _value, $Res Function(_$_RegisterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenModel = null,
  }) {
    return _then(_$_RegisterModel(
      tokenModel: null == tokenModel
          ? _value.tokenModel
          : tokenModel // ignore: cast_nullable_to_non_nullable
              as AccessTokenModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterModel implements _RegisterModel {
  const _$_RegisterModel({@JsonKey(name: 'data') required this.tokenModel});

  factory _$_RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterModelFromJson(json);

  @override
  @JsonKey(name: 'data')
  final AccessTokenModel tokenModel;

  @override
  String toString() {
    return 'RegisterModel(tokenModel: $tokenModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterModel &&
            (identical(other.tokenModel, tokenModel) ||
                other.tokenModel == tokenModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tokenModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterModelCopyWith<_$_RegisterModel> get copyWith =>
      __$$_RegisterModelCopyWithImpl<_$_RegisterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterModelToJson(
      this,
    );
  }
}

abstract class _RegisterModel implements RegisterModel {
  const factory _RegisterModel(
          {@JsonKey(name: 'data') required final AccessTokenModel tokenModel}) =
      _$_RegisterModel;

  factory _RegisterModel.fromJson(Map<String, dynamic> json) =
      _$_RegisterModel.fromJson;

  @override
  @JsonKey(name: 'data')
  AccessTokenModel get tokenModel;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterModelCopyWith<_$_RegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
