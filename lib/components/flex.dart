import 'package:flutter/material.dart';

class FlexRoute extends StatefulWidget {
  FlexRoute({Key key}) : super(key: key);
  @override
  _FlexRouteState createState() => _FlexRouteState();
}

class _FlexRouteState extends State<FlexRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('FlexRoute'),
      ),
      body: Column(
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  height: 30,
                  color: Colors.grey,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blue,
                  height: 20,
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: SizedBox(
              height: 100,
              child: Flex(
                direction: Axis.vertical,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.blue,
                      height: 10,
                    ),
                  ),
                  Spacer(flex: 1),
                  Expanded(
                    child: Container(
                      height: 10,
                      color: Colors.purpleAccent,
                    ),
                    flex: 2,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
