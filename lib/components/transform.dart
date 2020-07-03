import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransformRoute extends StatefulWidget {
  TransformRoute({Key key}) : super(key: key);
  @override
  _TransformRouteState createState() => _TransformRouteState();
}

class _TransformRouteState extends State<TransformRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('TransformRoute'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(18),
              color: Colors.black,
              child: Transform(
                alignment: Alignment.topLeft,
                transform: Matrix4.skewX(1.9999),
                child: Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.red,
                  child: Text('123'),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Transform.translate(
                child: Text('offset'),
                offset: Offset(100, 10),
                transformHitTests: true,
              ),
            ),
            Container(
              color: Colors.red,
              child: Transform.rotate(
                angle: math.pi,
                child: Text('123'),
              ),
            ),
            Container(
              color: Colors.red,
              child: Transform.scale(
                scale: 0.5,
                origin: Offset(10, 10),
                alignment: Alignment.bottomRight,
                child: Text('123'),
              ),
            ),
            Container(
              color: Colors.red,
              child: RotatedBox(
                quarterTurns: 2,
                child: Text('123'),
              ),
            )
          ],
        ));
  }
}
