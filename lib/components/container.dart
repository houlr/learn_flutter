import 'package:flutter/material.dart';

class ContainerRoute extends StatefulWidget {
  ContainerRoute({Key key}) : super(key: key);
  @override
  _TransformRouteState createState() => _TransformRouteState();
}

class _TransformRouteState extends State<ContainerRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('ContainerRoute'),
      ),
      body: Container(
        constraints: BoxConstraints.tightFor(height: 150, width: 200),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: RadialGradient(
                //背景径向渐变
                colors: [Colors.red, Colors.orange],
                center: Alignment.topLeft,
                radius: .98),
            boxShadow: [
              BoxShadow(
                  color: Colors.black54,
                  offset: Offset(2.0, 2.0),
                  blurRadius: 4.0)
            ]),
        child: Text('5.20',
            style: TextStyle(
              fontSize: 18,
            )),
        margin: EdgeInsets.only(top: 20, left: 100),
        transform: Matrix4.rotationZ(.2),
      ),
    );
  }
}
