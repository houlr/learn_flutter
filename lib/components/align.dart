import 'package:flutter/material.dart';

class AlignRoute extends StatefulWidget {
  AlignRoute({Key key}) : super(key: key);
  @override
  _AlignRouteState createState() => _AlignRouteState();
}

class _AlignRouteState extends State<AlignRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('align'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: Align(
                alignment: Alignment(0, 0),
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.blue,
                ),
                // widthFactor: 4,
                // heightFactor: 4,
              ),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: Align(
                alignment: FractionalOffset(0.5, 0.5),
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.blue,
                ),
                // widthFactor: 4,
                // heightFactor: 4,
              ),
            ),
          ],
        ));
  }
}
