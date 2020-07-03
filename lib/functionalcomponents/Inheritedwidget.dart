import 'package:flutter/material.dart';

class InheritedWidgetRoute extends StatefulWidget {
  InheritedWidgetRoute({Key key}) : super(key: key);
  @override
  _InheritedWidgetRouteState createState() => _InheritedWidgetRouteState();
}

class _InheritedWidgetRouteState extends State<InheritedWidgetRoute> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('InheritedWidgetRoute'),
        ),
        body: ShareData(
          data: _count,
          child: Column(
            children: <Widget>[
              ShowData(),
              RaisedButton(onPressed: () {
                setState(() {
                  _count++;
                });
              })
            ],
          ),
        ));
  }
}

class ShareData extends InheritedWidget {
  const ShareData({
    @required this.data,
    Widget child,
  }) : super(child: child);

  final int data;

  static ShareData of(BuildContext context) {
    // return context.dependOnInheritedWidgetOfExactType<ShareData>();
    return context.getElementForInheritedWidgetOfExactType<ShareData>().widget;
  }

  @override
  bool updateShouldNotify(ShareData oldWidget) {
    return oldWidget.data != data;
  }
}

class ShowData extends StatefulWidget {
  ShowData({Key key}) : super(key: key);
  @override
  _ShowDataState createState() => _ShowDataState();
}

class _ShowDataState extends State<ShowData> {
  @override
  Widget build(BuildContext context) {
    return Text(ShareData.of(context).data.toString());
    // return Text('test');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('depencies changed');
  }
}
