import 'package:flutter/material.dart';

class ConstrainedBoxRoute extends StatefulWidget {
  ConstrainedBoxRoute({Key key}) : super(key: key);
  @override
  _ConstrainedBoxRouteState createState() => _ConstrainedBoxRouteState();
}

class _ConstrainedBoxRouteState extends State<ConstrainedBoxRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('ConstrainedBox'),
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
        body: Column(children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints.loose(Size(200, 200)),
            child: Container(
              height: 5,
              color: Colors.red,
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 200,
              minHeight: 200,
            ),
            child: UnconstrainedBox(
              child: Container(
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
            ),
          ),
        ]));
  }
}
