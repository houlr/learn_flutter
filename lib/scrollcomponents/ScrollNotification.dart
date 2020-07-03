import 'package:flutter/material.dart';

class ScrollNotificationRoute extends StatefulWidget {
  ScrollNotificationRoute({Key key}) : super(key: key);
  @override
  _ScrollNotificationRouteState createState() =>
      _ScrollNotificationRouteState();
}

class _ScrollNotificationRouteState extends State<ScrollNotificationRoute> {
  String _progress = '0%';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('ScrollNotificationRoute'),
        ),
        body: Scrollbar(
          child: NotificationListener<ScrollNotification>(
            onNotification: (ScrollNotification notification) {
              double progress = notification.metrics.pixels /
                  notification.metrics.maxScrollExtent;
              setState(() {
                _progress = '${(progress * 100).toInt()}%';
              });
              return false;
            },
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                ListView.builder(
                  itemCount: 100,
                  itemExtent: 50,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(title: Text("$index"));
                  },
                ),
                CircleAvatar(
                  child: Text('$_progress'),
                )
              ],
            ),
          ),
        ));
  }
}
