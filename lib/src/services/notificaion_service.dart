import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:global_notifications/src/seconnd_screen.dart';

class NotificationService {
  static final navigatorKey = new GlobalKey<NavigatorState>();
  static const String NOTIFICATION_SUCESS = "notification-sucess-route";

  static Flushbar successFactory({
    // BuildContext context,
    String title = "Gaaaaaaaaaaa",
    String msg = "Se realizó correctamente la operación",
  }) {
    return Flushbar(
      flushbarPosition: FlushbarPosition.TOP,
      titleText: Text(title, style: TextStyle(color: Colors.white)),
      messageText: Text(msg, style: TextStyle(color: Colors.white)),
      //  backgroundColor: Colors.black26,
      duration: const Duration(seconds: 3),
      onTap: (_) {
        Navigator.pushNamed(context, SecondScreen.routeName);
      },
    );
  }
}
