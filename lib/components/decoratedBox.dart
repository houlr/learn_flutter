import 'package:flutter/material.dart';

class DecoratedBoxRoute extends StatefulWidget {
  DecoratedBoxRoute({Key key}) : super(key: key);
  @override
  _DecoratedBoxRouteState createState() => _DecoratedBoxRouteState();
}

class _DecoratedBoxRouteState extends State<DecoratedBoxRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('DecoratedBoxRoute'),
          actions: <Widget>[
            UnconstrainedBox(
              child: SizedBox(
                  width: 30,
                  height: 30,
                  child: CircularProgressIndicator(
                    strokeWidth: 3,
                    valueColor: AlwaysStoppedAnimation(Colors.white70),
                  )),
            )
          ],
        ),
        body: DecoratedBox(
          child: Padding(
            padding: EdgeInsets.all(18),
            child: Text('decoratedBox'),
          ),
          decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.red, Colors.orange[700]]),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.blue,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 4.0),
                BoxShadow(
                    color: Colors.red,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 4.0)
              ]),
        ));
  }
}
