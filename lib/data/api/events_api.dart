import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../../domain/enum/event_filters.dart';
import '../../domain/model/event_model.dart';
import '../../domain/model/events_model.dart';
import 'api_paths.dart';

class EventsApi {
  const EventsApi(this._dio);

  final Dio _dio;

  Future<EventsModel> getEvents({
    required EventFilters filter,
    required int startDate,
    required int endDate,
  }) async {
    final response = await _dio.get(
      ApiPaths.events,
      queryParameters: {
        'start-date': startDate,
        'end-date': endDate,
        'filter-type': filter.name,
      },
    );
    debugPrint('$response');
    return EventsModel.fromJson(response.data);
  }

  Future<EventModel> getEvent({
    required String eventUuid,
  }) async {
    final response = await _dio.get(
      '${ApiPaths.events}/$eventUuid',
    );
    return EventModel.fromJson(response.data);
  }
}
