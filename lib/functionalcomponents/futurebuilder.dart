import 'package:flutter/material.dart';

class FutureBuilderRoute extends StatefulWidget {
  FutureBuilderRoute({Key key}) : super(key: key);
  @override
  _FutureBuilderRouteState createState() => _FutureBuilderRouteState();
}

class _FutureBuilderRouteState extends State<FutureBuilderRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('123456'),
        ),
        body: Center(
          child: FutureBuilder(
              future: mockNetworkData(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Text('${snapshot.data}');
                } else {
                  return CircularProgressIndicator();
                }
              }),
        ));
  }
}

Future<String> mockNetworkData() async {
  return Future.delayed(Duration(seconds: 3), () => 'lalalalaalalal');
}
