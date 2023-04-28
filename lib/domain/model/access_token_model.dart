import 'package:freezed_annotation/freezed_annotation.dart';

part 'access_token_model.freezed.dart';
part 'access_token_model.g.dart';

@freezed
class AccessTokenModel with _$AccessTokenModel {
  const factory AccessTokenModel({
    @JsonKey(name: 'accessToken') required String accessToken,
  }) = _AccessTokenModel;

  factory AccessTokenModel.fromJson(Map<String, Object?> json) =>
      _$AccessTokenModelFromJson(json);
}
