import 'package:flutter/material.dart';

class DialogRoute extends StatefulWidget {
  DialogRoute({Key key}) : super(key: key);
  @override
  _DialogRouteState createState() => _DialogRouteState();
}

class _DialogRouteState extends State<DialogRoute> {
  int selected = 1;

  @override
  Widget build(BuildContext context) {
    Future<bool> showDialog1() {
      return showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('提示'),
              content: Text('123'),
              actions: <Widget>[
                FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('关闭')),
                FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: Text('删除')),
              ],
            );
          });
    }

    Future<int> showDialog2() {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return SimpleDialog(
              title: Text('simple'),
              children: <Widget>[
                SimpleDialogOption(
                    child: Text('1'),
                    onPressed: () {
                      Navigator.of(context).pop(1);
                    }),
                SimpleDialogOption(
                    child: Text('3'),
                    onPressed: () {
                      Navigator.of(context).pop(3);
                    }),
                SimpleDialogOption(
                    child: Text('2'),
                    onPressed: () {
                      Navigator.of(context).pop(2);
                    }),
              ],
            );
          });
    }

    Future<int> showDialog3() {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              child: StatefulBuilder(builder: (context, _setState) {
                return Column(children: <Widget>[
                  ListTile(title: Text('请选择')),
                  Expanded(
                      child: ListView.builder(
                          itemCount: 100,
                          itemBuilder: (BuildContext context, int index) {
                            return RadioListTile<int>(
                                value: index,
                                groupValue: selected,
                                selected: selected == index,
                                title: Text('$index'),
                                onChanged: (change) {
                                  _setState(() {
                                    selected = change;
                                  });
                                  print('setState$selected');
                                });
                          })),
                  Row(
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('关闭'),
                      ),
                      RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pop(1);
                        },
                        child: Text('quedin?'),
                      ),
                    ],
                  )
                ]);
              }),
            );
          });
    }

    Future<int> showDialog5() {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
                child: Column(children: <Widget>[
              ListTile(title: Text('请选择')),
              Expanded(
                  child: ListView.builder(
                      itemCount: 100,
                      itemBuilder: (BuildContext context, int index) {
                        return RadioListTile<int>(
                            value: index,
                            groupValue: selected,
                            selected: selected == index,
                            title: Text('$index'),
                            onChanged: (change) {
                              print('change$index');
                              (context as Element).markNeedsBuild();
                              setState(() {
                                selected = change;
                              });
                            });
                      })),
              Row(
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('关闭'),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pop(1);
                    },
                    child: Text('quedin?'),
                  ),
                ],
              )
            ]));
          });
    }

    Future<int> showDialog4() {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return Container(
                width: 50,
                height: 50,
                child: FlatButton(
                  child: Text('123'),
                  onPressed: () {
                    Navigator.of(context).pop(1);
                  },
                ));
          });
    }

    Future<int> _showModalBottomSheet() {
      return showModalBottomSheet<int>(
          context: context,
          builder: (BuildContext context) {
            return Container(
                width: 50,
                height: 50,
                child: FlatButton(
                  child: Text('123'),
                  onPressed: () {
                    Navigator.of(context).pop(1);
                  },
                ));
          });
    }

    return Scaffold(
        appBar: AppBar(
          title: Text('123456'),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () async {
                bool res = await showDialog1();
                print(res);
              },
              child: Text('normal'),
            ),
            RaisedButton(
              onPressed: () async {
                int res = await showDialog2();
                print(res);
              },
              child: Text('list'),
            ),
            RaisedButton(
              onPressed: () async {
                int res = await showDialog3();
                print(res);
              },
              child: Text('list'),
            ),
            RaisedButton(
              onPressed: () async {
                int res = await showDialog5();
                print(res);
              },
              child: Text('markNeedsBuild showDialog5'),
            ),
            RaisedButton(
              onPressed: () async {
                int res = await showDialog4();
                print(res);
              },
              child: Text('list'),
            ),
            RaisedButton(
              onPressed: () async {
                bool res = await showGeneralDialog<bool>(
                  context: context,
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return SafeArea(
                      child: Center(child: RaisedButton(onPressed: () {
                        Navigator.of(context).pop(false);
                      })),
                    );
                  },
                  transitionBuilder: (BuildContext context,
                      Animation<double> animation,
                      Animation<double> secondaryAnimation,
                      Widget child) {
                    // 使用缩放动画
                    return ScaleTransition(
                      scale: CurvedAnimation(
                        parent: animation,
                        curve: Curves.easeOut,
                      ),
                      child: child,
                    );
                  },
                  transitionDuration: const Duration(milliseconds: 150),
                  barrierDismissible: false,
                );
                print(res);
              },
              child: Text('generaldialog'),
            ),
            RaisedButton(
              onPressed: () async {
                int res = await _showModalBottomSheet();
                print(res);
              },
              child: Text('_showModalBottomSheet'),
            ),
          ],
        ));
  }
}
