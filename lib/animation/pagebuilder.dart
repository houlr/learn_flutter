import 'package:flutter/material.dart';

class PageBuilderRoute extends StatefulWidget {
  PageBuilderRoute({Key key}) : super(key: key);
  @override
  RouteState createState() => RouteState();
}

class RouteState extends State<PageBuilderRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('PageBuilderRoute'),
        ),
        body: Center(child: Text('PageBuilderRoute')));
  }
}
