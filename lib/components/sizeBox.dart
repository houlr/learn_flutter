import 'package:flutter/material.dart';

class SizeBoxRoute extends StatefulWidget {
  SizeBoxRoute({Key key}) : super(key: key);
  @override
  _SizeBoxRouteState createState() => _SizeBoxRouteState();
}

class _SizeBoxRouteState extends State<SizeBoxRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('SizeBoxRoute'),
        ),
        body: SizedBox(
            width: 80.0,
            height: 80.0,
            child: Container(
              color: Colors.red,
            )));
  }
}
