import 'package:flutter/material.dart';

class StackRoute extends StatefulWidget {
  StackRoute({Key key}) : super(key: key);
  @override
  _StackRouteState createState() => _StackRouteState();
}

class _StackRouteState extends State<StackRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('wrap'),
        ),
        body: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment: AlignmentDirectional.bottomEnd,
            fit: StackFit.expand,
            children: <Widget>[
              Positioned(
                bottom: 58.0,
                height: 200,
                child: Text('123'),
              ),
              Container(
                child: Text('123'),
                color: Colors.blue,
              ),
              Positioned(
                top: 18.0,
                child: Text("Your friend"),
              )
            ],
          ),
        ));
  }
}
