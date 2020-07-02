import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flushbar/flushbar.dart';
import 'package:flushbar/flushbar_route.dart';
import 'package:global_notifications/src/home_screen.dart';
import 'package:global_notifications/src/seconnd_screen.dart';
import 'package:global_notifications/src/services/notificaion_service.dart';

import '../services/notificaion_service.dart';

Route generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeScreen.routeName:
      return buildRoute(settings, HomeScreen());
    case SecondScreen.routeName:
      return buildRoute(settings, SecondScreen());
    case NotificationService.NOTIFICATION_SUCESS:
      return buildNotification(
        NotificationService.successFactory(
          onFlushBarTapped: settings.arguments,
        ),
      );
    default:
      return buildRoute(settings, HomeScreen());
  }
}

MaterialPageRoute buildRoute(RouteSettings settings, Widget builder) {
  return new MaterialPageRoute(
    settings: settings,
    builder: (BuildContext context) => builder,
    fullscreenDialog: false,
    maintainState: true,
  );
}

FlushbarRoute buildNotification(Flushbar type) {
  return FlushbarRoute(
    flushbar: type,
    settings: RouteSettings(name: FLUSHBAR_ROUTE_NAME),
  );
}
