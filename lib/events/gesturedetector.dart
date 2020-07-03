import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GestureDetectorRoute extends StatefulWidget {
  GestureDetectorRoute({Key key}) : super(key: key);
  @override
  _GestureDetectorRouteState createState() => _GestureDetectorRouteState();
}

class _GestureDetectorRouteState extends State<GestureDetectorRoute> {
  String _opration = 'No Gesture detected';
  double _top = 0;
  double _left = 0;
  double _width = 200;
  TapGestureRecognizer _tapGestureRecognizer = new TapGestureRecognizer();
  bool _changeColors = false;
  double _jzTop = 0;
  double _jzleft = 0;
  double _leftB = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('123456'),
        ),
        body: Column(children: <Widget>[
          Center(
              child: GestureDetector(
            child: Container(
              child: Text(_opration),
              width: 200,
              height: 100,
              color: Colors.blue,
              alignment: Alignment.center,
            ),
            onTap: () => updateText('onTap'),
            onDoubleTap: () => updateText('onDoubleTap'),
            onLongPress: () => updateText('onLongPress'),
          )),
          GestureDetector(
            child: Image.asset(
              './image/t.png',
              width: _width,
              height: _width,
            ),
            onScaleUpdate: (ScaleUpdateDetails e) {
              setState(() {
                _width = 200 * e.scale.clamp(.8, 10);
              });
            },
          ),
          Text.rich(TextSpan(children: [
            TextSpan(text: '开头啦啦啦'),
            TextSpan(
                text: '点击事件',
                style:
                    TextStyle(color: _changeColors ? Colors.blue : Colors.red),
                recognizer: _tapGestureRecognizer
                  ..onTap = () {
                    setState(() {
                      _changeColors = !_changeColors;
                    });
                  }),
            TextSpan(text: '开头啦啦啦')
          ])),
          Expanded(
              child: Stack(children: <Widget>[
            Positioned(
              left: _leftB,
              child: Listener(
                onPointerDown: (details) {
                  print("down");
                },
                onPointerUp: (details) {
                  //会触发
                  print("up");
                },
                child: GestureDetector(
                  child: CircleAvatar(child: Text("B")),
                  onHorizontalDragUpdate: (DragUpdateDetails details) {
                    setState(() {
                      _leftB += details.delta.dx;
                    });
                  },
                  onHorizontalDragEnd: (details) {
                    print("onHorizontalDragEnd");
                  },
                ),
              ),
            ),
          ])),
          Expanded(
            child: Stack(
              children: <Widget>[
                Positioned(
                    child: GestureDetector(
                      onPanDown: (DragDownDetails e) {
                        print('按下位置${e.globalPosition}');
                      },
                      onPanUpdate: (DragUpdateDetails e) {
                        setState(() {
                          _top += e.delta.dy;
                          _left += e.delta.dx;
                        });
                      },
                      onPanEnd: (DragEndDetails e) {
                        print('结束时${e.velocity}');
                      },
                      child: CircleAvatar(child: Text('A')),
                    ),
                    left: _left,
                    top: _top)
              ],
              alignment: Alignment.center,
            ),
          ),
          Expanded(
            child: Stack(
              children: <Widget>[
                Positioned(
                    child: GestureDetector(
                      onVerticalDragUpdate: (DragUpdateDetails e) {
                        setState(() {
                          _jzTop += e.delta.dy;
                        });
                      },
                      onHorizontalDragUpdate: (DragUpdateDetails e) {
                        setState(() {
                          _jzleft += e.delta.dx;
                        });
                      },
                      onHorizontalDragEnd: (details) {
                        print("onHorizontalDragEnd");
                      },
                      onTapDown: (details) {
                        print("down");
                      },
                      onTapUp: (details) {
                        print("up");
                      },
                      child: CircleAvatar(child: Text('A')),
                    ),
                    left: _jzleft,
                    top: _jzTop)
              ],
              alignment: Alignment.center,
            ),
          ),
        ]));
  }

  void updateText(String text) {
    setState(() {
      _opration = text;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tapGestureRecognizer.dispose();
  }
}

Future<String> mockNetworkData() async {
  return Future.delayed(Duration(seconds: 3), () => 'lalalalaalalal');
}
