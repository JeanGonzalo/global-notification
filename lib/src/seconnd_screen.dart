import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  static const routeName = 'secondScreen-route';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Estas en el segundo screen'),
      ),
    );
  }
}
