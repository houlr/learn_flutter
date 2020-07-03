import 'package:flutter/material.dart';
import './animateddecoratedbox.dart';
import './implicitlyanimatedwidget.dart';

class AnimatedDecoratedRoute extends StatefulWidget {
  AnimatedDecoratedRoute({Key key}) : super(key: key);
  @override
  RouteState createState() => RouteState();
}

class RouteState extends State<AnimatedDecoratedRoute> {
  Color _decorationColor = Colors.blue;
  var duration = Duration(seconds: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('PageBuilderRoute'),
        ),
        body: Column(
          children: <Widget>[
            AnimatedDecoratedBox(
              decoration: BoxDecoration(color: _decorationColor),
              duration: duration,
              child: FlatButton(
                child: Text(
                  'animatedbox',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    _decorationColor = Colors.red;
                  });
                },
              ),
            ),
            ImplicitlyAnimatedWidgetBox(
              duration: duration,
              decoration: BoxDecoration(color: _decorationColor),
              child: FlatButton(
                child: Text(
                  'animatedbox',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    _decorationColor = Colors.red;
                  });
                },
              ),
            )
          ],
        ));
  }
}
