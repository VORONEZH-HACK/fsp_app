import 'package:dio/dio.dart';

import '../../domain/model/attachment_data_model.dart';
import '../../domain/model/register_model.dart';
import 'api_paths.dart';

class AuthApi {
  AuthApi(this._dio);

  final Dio _dio;

  Future<String> register(AttachmentDataModel data) async {
    final response = await _dio.post(
      ApiPaths.register,
      data: data,
      options: Options(
        headers: {'Content-Type': 'application/json'},
      ),
    );
    final token = RegisterModel.fromJson(response.data);
    return token.tokenModel.accessToken;
  }
}
