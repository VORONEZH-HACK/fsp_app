// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttachmentDataModel _$$_AttachmentDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_AttachmentDataModel(
      email: json['email'] as String?,
      education: json['edu'] as String?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      patronymic: json['patronymic'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$_AttachmentDataModelToJson(
        _$_AttachmentDataModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'edu': instance.education,
      'name': instance.name,
      'surname': instance.surname,
      'patronymic': instance.patronymic,
      'password': instance.password,
    };
