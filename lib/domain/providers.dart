import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/providers.dart';
import 'controller/auth_controller.dart';
import 'controller/events_list_controller.dart';
import 'controller/login_data_controller.dart';
import 'controller/navigation_controller.dart';
import 'model/attachment_screen_state.dart';
import 'model/events_list_state.dart';

final navigationControllerProvider = Provider(
  (ref) => NavigationController(),
);

final accessTokenProvider = StateProvider<String?>((ref) => null);

final isAuthenticatedProvider = StateProvider<bool>(
  (ref) => ref.watch(accessTokenProvider) != null,
);

final eventsListControllerProvider =
    StateNotifierProvider<EventsListController, EventsListState>(
  (ref) => EventsListController(
    ref.watch(eventsApiProvider),
  ),
);

final loginDataControllerProvider = StateProvider(
  (ref) => LoginDataController(),
);

final authControllerProvider =
    StateNotifierProvider<AuthController, AttachmentScreenState>(
  (ref) => AuthController(
    ref.watch(attachmentApiProvider),
    ref.watch(authApiProvider),
    ref.watch(loginDataControllerProvider),
  ),
);
