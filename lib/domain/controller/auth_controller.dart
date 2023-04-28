import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/api/attachment_api.dart';
import '../../data/api/auth_api.dart';
import '../model/attachment_screen_state.dart';
import 'login_data_controller.dart';

class AuthController extends StateNotifier<AttachmentScreenState> {
  AuthController(
    this._attachmentApi,
    this._authApi,
    this._loginController,
  ) : super(const AttachmentScreenState());

  final AttachmentApi _attachmentApi;
  final AuthApi _authApi;
  final LoginDataController _loginController;

  bool get isLoading => state.isLoading;

  bool get isError => state.isError;

  bool get isAgreementAccepted => state.isAgreementAccepted;

  bool get hasAttached => state.data != null;

  String? get error => state.error;

  String? get fileName => state.data?.path.split('/').last;

  void check(bool isChecked) {
    state = state.copyWith(
      isAgreementAccepted: isChecked,
    );
  }

  Future<String> register() => _authApi.register(_loginController.state);

  Future<void> attachFile() async {
    state = const AttachmentScreenState().copyWith(
      isLoading: true,
    );

    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf'],
      );

      final path = result?.files.single.path;
      if (path != null) {
        state = const AttachmentScreenState().copyWith(
          data: File(path),
        );
      } else {
        state = const AttachmentScreenState();
      }
    } on Object catch (e) {
      state = const AttachmentScreenState().copyWith(
        isError: true,
        error: e.toString(),
        data: state.data,
      );
    }
  }

  Future<void> sendFile() async {
    state = const AttachmentScreenState().copyWith(
      isLoading: true,
      data: state.data,
      isAgreementAccepted: state.isAgreementAccepted,
    );

    try {
      final file = state.data;
      if (file != null) {
        final data = await _attachmentApi.parseFile(file);
        _loginController.setData(data);
      }

      state = const AttachmentScreenState().copyWith(
        data: state.data,
        isAgreementAccepted: state.isAgreementAccepted,
      );
    } on Object catch (e) {
      debugPrint(e.toString());

      state = const AttachmentScreenState().copyWith(
        isError: true,
        error: e.toString(),
        data: state.data,
        isAgreementAccepted: state.isAgreementAccepted,
      );
    }
  }
}
