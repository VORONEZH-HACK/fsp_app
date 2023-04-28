// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attachment_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttachmentDataModel _$AttachmentDataModelFromJson(Map<String, dynamic> json) {
  return _AttachmentDataModel.fromJson(json);
}

/// @nodoc
mixin _$AttachmentDataModel {
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'edu')
  String? get education => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'surname')
  String? get surname => throw _privateConstructorUsedError;
  @JsonKey(name: 'patronymic')
  String? get patronymic => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttachmentDataModelCopyWith<AttachmentDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentDataModelCopyWith<$Res> {
  factory $AttachmentDataModelCopyWith(
          AttachmentDataModel value, $Res Function(AttachmentDataModel) then) =
      _$AttachmentDataModelCopyWithImpl<$Res, AttachmentDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'edu') String? education,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'surname') String? surname,
      @JsonKey(name: 'patronymic') String? patronymic,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class _$AttachmentDataModelCopyWithImpl<$Res, $Val extends AttachmentDataModel>
    implements $AttachmentDataModelCopyWith<$Res> {
  _$AttachmentDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? education = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? patronymic = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      patronymic: freezed == patronymic
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttachmentDataModelCopyWith<$Res>
    implements $AttachmentDataModelCopyWith<$Res> {
  factory _$$_AttachmentDataModelCopyWith(_$_AttachmentDataModel value,
          $Res Function(_$_AttachmentDataModel) then) =
      __$$_AttachmentDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'edu') String? education,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'surname') String? surname,
      @JsonKey(name: 'patronymic') String? patronymic,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class __$$_AttachmentDataModelCopyWithImpl<$Res>
    extends _$AttachmentDataModelCopyWithImpl<$Res, _$_AttachmentDataModel>
    implements _$$_AttachmentDataModelCopyWith<$Res> {
  __$$_AttachmentDataModelCopyWithImpl(_$_AttachmentDataModel _value,
      $Res Function(_$_AttachmentDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? education = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? patronymic = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_AttachmentDataModel(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      patronymic: freezed == patronymic
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttachmentDataModel implements _AttachmentDataModel {
  const _$_AttachmentDataModel(
      {@JsonKey(name: 'email') this.email,
      @JsonKey(name: 'edu') this.education,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'surname') this.surname,
      @JsonKey(name: 'patronymic') this.patronymic,
      @JsonKey(name: 'password') this.password});

  factory _$_AttachmentDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_AttachmentDataModelFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'edu')
  final String? education;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'surname')
  final String? surname;
  @override
  @JsonKey(name: 'patronymic')
  final String? patronymic;
  @override
  @JsonKey(name: 'password')
  final String? password;

  @override
  String toString() {
    return 'AttachmentDataModel(email: $email, education: $education, name: $name, surname: $surname, patronymic: $patronymic, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttachmentDataModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.education, education) ||
                other.education == education) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.patronymic, patronymic) ||
                other.patronymic == patronymic) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, email, education, name, surname, patronymic, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttachmentDataModelCopyWith<_$_AttachmentDataModel> get copyWith =>
      __$$_AttachmentDataModelCopyWithImpl<_$_AttachmentDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttachmentDataModelToJson(
      this,
    );
  }
}

abstract class _AttachmentDataModel implements AttachmentDataModel {
  const factory _AttachmentDataModel(
          {@JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'edu') final String? education,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'surname') final String? surname,
          @JsonKey(name: 'patronymic') final String? patronymic,
          @JsonKey(name: 'password') final String? password}) =
      _$_AttachmentDataModel;

  factory _AttachmentDataModel.fromJson(Map<String, dynamic> json) =
      _$_AttachmentDataModel.fromJson;

  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'edu')
  String? get education;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'surname')
  String? get surname;
  @override
  @JsonKey(name: 'patronymic')
  String? get patronymic;
  @override
  @JsonKey(name: 'password')
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_AttachmentDataModelCopyWith<_$_AttachmentDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
