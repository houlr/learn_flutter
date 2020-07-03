import 'package:flutter/material.dart';

class StreamBuilderRoute extends StatefulWidget {
  StreamBuilderRoute({Key key}) : super(key: key);
  @override
  _StreamBuilderRouteState createState() => _StreamBuilderRouteState();
}

class _StreamBuilderRouteState extends State<StreamBuilderRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('123456'),
        ),
        body: Center(
          child: StreamBuilder(
            stream: streamBuiler(),
            builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
              if (snapshot.hasError) return Text('Error: ${snapshot.error}');
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return Text('没有Stream');
                case ConnectionState.waiting:
                  return Text('等待数据...');
                case ConnectionState.active:
                  return Text('active: ${snapshot.data}');
                case ConnectionState.done:
                  return Text('Stream已关闭');
              }
              return null;
            },
          ),
        ));
  }
}

Stream<int> streamBuiler() {
  return Stream.periodic(Duration(seconds: 1), (i) {
    return i;
  });
}
