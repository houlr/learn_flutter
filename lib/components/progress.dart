import 'package:flutter/material.dart';

class ProgerssTestRoute extends StatefulWidget {
  ProgerssTestRoute({Key key}) : super(key: key);
  @override
  _ProgressTestRouteState createState() => _ProgressTestRouteState();
}

class _ProgressTestRouteState extends State<ProgerssTestRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('form Test')),
      body: Column(
        children: <Widget>[
          LinearProgressIndicator(
            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation(Colors.blue),
          ),
          LinearProgressIndicator(
            value: 0.5,
            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation(Colors.blue),
          ),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.blue),
            backgroundColor: Colors.red,
          ),
          CircularProgressIndicator(
            backgroundColor: Colors.red,
            value: 0.9,
            strokeWidth: 10,
          )
        ],
      ),
    );
  }
}
