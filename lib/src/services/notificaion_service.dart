import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class NotificationService {
  static final navigatorKey = new GlobalKey<NavigatorState>();
  static const String NOTIFICATION_SUCESS = "notification-sucess-route";

  static Flushbar successFactory({
    String title = "Gaaaaaaaaaaa",
    String msg = "Se realizó correctamente la operación",
    VoidCallback onFlushBarTapped,
  }) {
    return Flushbar(
      flushbarPosition: FlushbarPosition.TOP,
      titleText: Text(title, style: TextStyle(color: Colors.white)),
      messageText: Text(msg, style: TextStyle(color: Colors.white)),
      duration: const Duration(seconds: 3),
      onTap: (_) {
        print('hello');
        // do other stuff
        onFlushBarTapped();
      },
    );
  }
}
