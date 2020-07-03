import 'package:flutter/material.dart';

class NotificationRoute extends StatefulWidget {
  NotificationRoute({Key key}) : super(key: key);
  @override
  NotificationRouteState createState() => NotificationRouteState();
}

class NotificationRouteState extends State<NotificationRoute>
    with SingleTickerProviderStateMixin {
  String _msg = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('123456'),
        ),
        body: NotificationListener<MyNotification>(
            onNotification: (notification) {
              print(notification.msg);
              setState(() {
                _msg += notification.msg;
              });
              return true;
            },
            child: Column(children: <Widget>[
              Center(
                child: Builder(builder: (BuildContext context) {
                  return FlatButton(
                      onPressed: () {
                        MyNotification('hihihi').dispatch(context);
                      },
                      child: Text('button'));
                }),
              ),
              Text(_msg)
            ])));
  }
}

class MyCurve extends Curve {}

class MyNotification extends Notification {
  MyNotification(this.msg);
  final String msg;
}
