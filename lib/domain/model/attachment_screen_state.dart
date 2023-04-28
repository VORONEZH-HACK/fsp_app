import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'attachment_screen_state.freezed.dart';

@freezed
class AttachmentScreenState with _$AttachmentScreenState {
  const factory AttachmentScreenState({
    File? data,
    String? error,
    @Default(false) bool isAgreementAccepted,
    @Default(false) bool isSelecting,
    @Default(false) bool isLoading,
    @Default(false) bool isError,
  }) = _AttachmentScreenState;
}
