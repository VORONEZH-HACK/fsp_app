import 'package:freezed_annotation/freezed_annotation.dart';

part 'attachment_data_model.freezed.dart';
part 'attachment_data_model.g.dart';

@freezed
class AttachmentDataModel with _$AttachmentDataModel {
  const factory AttachmentDataModel({
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'edu') String? education,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'surname') String? surname,
    @JsonKey(name: 'patronymic') String? patronymic,
    @JsonKey(name: 'password') String? password,
  }) = _AttachmentDataModel;

  factory AttachmentDataModel.fromJson(Map<String, Object?> json) =>
      _$AttachmentDataModelFromJson(json);
}
