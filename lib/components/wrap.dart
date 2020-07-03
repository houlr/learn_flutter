import 'package:flutter/material.dart';

class WrapRoute extends StatefulWidget {
  WrapRoute({Key key}) : super(key: key);
  @override
  _WrapRouteState createState() => _WrapRouteState();
}

class _WrapRouteState extends State<WrapRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('wrap'),
        ),
        body: SizedBox(
          width: 300,
          height: 200,
          child: Wrap(
            spacing: 5,
            runSpacing: 0,
            alignment: WrapAlignment.center,
            // crossAxisAlignment: WrapCrossAlignment.center,
            // verticalDirection: VerticalDirection.up,
            // runAlignment: WrapAlignment.end,
            direction: Axis.horizontal,
            // runAlignment: WrapAlignment.center,
            children: <Widget>[
              Chip(
                avatar: CircleAvatar(
                  child: Text('A'),
                ),
                label: Text('Aaaaa'),
              ),
              Chip(
                avatar: CircleAvatar(
                  child: Text('B'),
                ),
                label: Text('Aaaaa'),
              ),
              Chip(
                avatar: CircleAvatar(
                  child: Text('C'),
                ),
                label: Text('Aaaaa'),
              ),
              Chip(
                avatar: CircleAvatar(
                  child: Text('D'),
                ),
                label: Text('Aaaaa'),
              ),
            ],
          ),
        ));
  }
}
