import 'package:flutter/material.dart';

class SingleChildScrollViewRoute extends StatefulWidget {
  SingleChildScrollViewRoute({Key key}) : super(key: key);
  @override
  _SingleChildScrollViewRouteState createState() =>
      _SingleChildScrollViewRouteState();
}

class _SingleChildScrollViewRouteState
    extends State<SingleChildScrollViewRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('SingleChildScrollViewRoute'),
      ),
      body: ScrollLists(),
    );
  }
}

class ScrollLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return Scrollbar(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: str
                .split('')
                .map((i) => Text(
                      i,
                      textScaleFactor: 2,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
