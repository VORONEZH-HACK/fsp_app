import 'package:flutter/material.dart';

import '../../ui/auth/attachment/attachment_screen.dart';
import '../../ui/auth/auth_screen.dart';
import '../../ui/auth/login/login_screen.dart';
import '../../ui/event_list/events_list_screen.dart';
import '../../ui/unknown/unknown_screen.dart';
import '../enum/routes.dart';

class NavigationController {
  static _getRoute(Widget widget) => MaterialPageRoute(builder: (_) => widget);

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final route = Routes.values.firstWhere(
      (e) => e.name == settings.name,
    );

    switch (route) {
      case Routes.profile:
        // TODO: Handle this case.
        break;
      case Routes.auth:
        return _getRoute(const AuthScreen());
      case Routes.login:
        return _getRoute(LoginScreen());
      case Routes.register:
        // TODO: Handle this case.
        break;
      case Routes.events:
        return _getRoute(const EventsListScreen());
      case Routes.event:
        // TODO: Handle this case.
        break;
      case Routes.team:
        // TODO: Handle this case.
        break;
      case Routes.newTeam:
        // TODO: Handle this case.
        break;
      case Routes.feedback:
        // TODO: Handle this case.
        break;
      case Routes.resume:
        return _getRoute(const AttachmentScreen());
    }

    return _getRoute(const UnknownScreen());
  }
}
