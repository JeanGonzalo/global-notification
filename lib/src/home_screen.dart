import 'package:flutter/material.dart';
import 'package:flushbar/flushbar.dart';
import 'package:global_notifications/src/seconnd_screen.dart';
import 'package:global_notifications/src/services/notificaion_service.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'homeScreen-route';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flushbar example gaaaa"),
      ),
      body: SafeArea(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              child: Text("Flushbar bottom"),
              textTheme: ButtonTextTheme.accent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.blueAccent),
              ),
              onPressed: () {
                Flushbar(
                    // margin: EdgeInsets.all(8),
                    borderRadius: 8,
                    title: "Hey Ninja",
                    message:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                    duration: Duration(seconds: 3),
                    flushbarPosition: FlushbarPosition.TOP);
                //..show(context);
              },
            ),
            SizedBox(
              height: 15,
            ),
            MaterialButton(
              child: Text("Flushbar Navigation"),
              textTheme: ButtonTextTheme.accent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.blueAccent),
              ),
              onPressed: () {
                NotificationService.navigatorKey.currentState
                    .pushNamed(NotificationService.NOTIFICATION_SUCESS);

                /*    Flushbar(
                    // margin: EdgeInsets.all(8),
                    borderRadius: 8,
                    title: "Hey Ninja",
                    message:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                    duration: Duration(seconds: 3),
                    flushbarPosition: FlushbarPosition.TOP);
                //..show(context);*/
              },
            ),
            SizedBox(
              height: 15,
            ),
            MaterialButton(
              child: Text("Flushbar top style"),
              textTheme: ButtonTextTheme.accent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.blueAccent),
              ),
              onPressed: () {
                Flushbar(
                  onTap: (_) {
                    Navigator.pushNamed(context, SecondScreen.routeName);
                  },
                  title: "Hey Ninja",
                  message:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                  flushbarPosition: FlushbarPosition.TOP,
                  flushbarStyle: FlushbarStyle.FLOATING,
                  reverseAnimationCurve: Curves.decelerate,
                  forwardAnimationCurve: Curves.elasticOut,
                  backgroundColor: Colors.red,
                  boxShadows: [
                    BoxShadow(
                        color: Colors.blue[800],
                        offset: Offset(0.0, 2.0),
                        blurRadius: 3.0)
                  ],
                  backgroundGradient:
                      LinearGradient(colors: [Colors.blueGrey, Colors.black]),
                  isDismissible: false,
                  duration: Duration(seconds: 4),
                  icon: Icon(
                    Icons.check,
                    color: Colors.greenAccent,
                  ),
                  mainButton: FlatButton(
                    color: Colors.blueGrey,
                    onPressed: () {
                      Navigator.pushNamed(context, SecondScreen.routeName);
                    },
                    child: Text(
                      "CLAP",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  showProgressIndicator: true,
                  progressIndicatorBackgroundColor: Colors.blueGrey,
                  titleText: Text(
                    "Hello Hero",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.yellow[600],
                        fontFamily: "ShadowsIntoLightTwo"),
                  ),
                  messageText: Text(
                    "You killed that giant monster in the city. Congratulations!",
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.green,
                        fontFamily: "ShadowsIntoLightTwo"),
                  ),
                )..show(context);
              },
            ),
          ],
        )),
      ),
    );
  }
}
