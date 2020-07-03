import 'package:flutter/material.dart';

class HeroRoute extends StatefulWidget {
  HeroRoute({Key key}) : super(key: key);
  @override
  RouteState createState() => RouteState();
}

class RouteState extends State<HeroRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('PageBuilderRoute'),
        ),
        body: Center(
            child: Hero(tag: 'avator', child: Image.asset('image/t.png'))));
  }
}
