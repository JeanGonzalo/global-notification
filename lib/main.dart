import 'package:flutter/material.dart';
import 'package:global_notifications/src/configs/routes.dart';
import 'package:global_notifications/src/home_screen.dart';
import 'package:global_notifications/src/services/notificaion_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: HomeScreen.routeName,
      onGenerateRoute: generateRoute,
      navigatorKey: NotificationService.navigatorKey,
    );
  }
}
