import 'package:flutter/material.dart';

class ThemeDataRoute extends StatefulWidget {
  ThemeDataRoute({Key key}) : super(key: key);
  @override
  _ThemeDataRouteRouteState createState() => _ThemeDataRouteRouteState();
}

class _ThemeDataRouteRouteState extends State<ThemeDataRoute> {
  Color _themeColor = Colors.teal;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Theme(
      data: ThemeData(
          primarySwatch: _themeColor,
          iconTheme: IconThemeData(color: _themeColor)),
      child: Scaffold(
        appBar: AppBar(
          title: Text('InheritedWidgetRoute'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //第一行Icon使用主题中的iconTheme
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Icon(Icons.favorite),
              Icon(Icons.airport_shuttle),
              Text("  颜色跟随主题")
            ]),
            //为第二行Icon自定义颜色（固定为黑色)
            Theme(
              data: themeData.copyWith(
                iconTheme: themeData.iconTheme.copyWith(color: Colors.black),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.favorite),
                    Icon(Icons.airport_shuttle),
                    Text("  颜色固定黑色")
                  ]),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.palette),
            onPressed: () {
              print(themeData.iconTheme);
              setState(() {
                _themeColor =
                    _themeColor == Colors.teal ? Colors.blue : Colors.teal;
              });
            }),
      ),
    );
  }
}
