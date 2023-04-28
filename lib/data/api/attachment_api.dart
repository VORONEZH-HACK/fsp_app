import 'dart:io';

import 'package:dio/dio.dart';

import '../../domain/model/attachment_data_model.dart';
import 'api_paths.dart';

class AttachmentApi {
  AttachmentApi(this._dio);

  final Dio _dio;

  Future<AttachmentDataModel> parseFile(File file) async {
    final fileName = file.path.split('/').last;

    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(
        file.path,
        filename: fileName,
      ),
    });

    final response = await _dio.post(
      ApiPaths.file,
      data: formData,
    );
    return AttachmentDataModel.fromJson(response.data);
  }
}
