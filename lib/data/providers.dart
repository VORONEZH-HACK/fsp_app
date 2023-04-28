import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/providers.dart';
import 'api/attachment_api.dart';
import 'api/auth_api.dart';
import 'api/events_api.dart';

const _accessTokenHeader = 'Access-Token';

final dioProvider = Provider(
  (ref) => Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 180),
      receiveTimeout: const Duration(seconds: 180),
    ),
  )..interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          debugPrint('onRequest: ${options.uri} -> ${options.data}');
          final accessToken = ref.read(accessTokenProvider);
          if (accessToken != null) {
            options.headers.addAll({
              _accessTokenHeader: accessToken,
            });
          }
          handler.next(options);
        },
        onResponse: (response, handler) {
          debugPrint('onResponse: ${response.realUri} -> ${response.data}');
          handler.next(response);
        },
        onError: (dioError, handler) => handler.next(dioError),
      ),
    ),
);

final eventsApiProvider = Provider(
  (ref) => EventsApi(
    ref.watch(dioProvider),
  ),
);

final attachmentApiProvider = Provider(
  (ref) => AttachmentApi(
    ref.watch(dioProvider),
  ),
);

final authApiProvider = Provider(
  (ref) => AuthApi(
    ref.watch(dioProvider),
  ),
);
