import 'package:flutter/material.dart';

class RowColumnRoute extends StatefulWidget {
  RowColumnRoute({Key key}) : super(key: key);
  @override
  _RowColumnRouteState createState() => _RowColumnRouteState();
}

class _RowColumnRouteState extends State<RowColumnRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('RowColumn'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        // textDirection: TextDirection.rtl,
        verticalDirection: VerticalDirection.up,
        children: <Widget>[
          Row(
            // textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.center,
            verticalDirection: VerticalDirection.up,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'big size',
                style: TextStyle(fontSize: 35),
              ),
              Text('abcde'),
              Text('qwert'),
            ],
          ),
          Row(
            children: <Widget>[
              Text('bcde'),
              Text('wert'),
            ],
          )
        ],
      ),
    );
  }
}
