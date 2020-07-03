import 'package:flutter/material.dart';

class FlowRoute extends StatefulWidget {
  FlowRoute({Key key}) : super(key: key);
  @override
  _FlowRouteState createState() => _FlowRouteState();
}

class _FlowRouteState extends State<FlowRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('flow'),
        ),
        body: Container(
          width: 200,
          height: 200,
          color: Colors.green,
          child: Flow(
            delegate: TestFlowdelegate(margin: EdgeInsets.all(10)),
            children: <Widget>[
              Container(
                width: 80,
                height: 80,
                color: Colors.red,
                child: Text('1'),
              ),
              Container(
                width: 80.0,
                height: 80.0,
                color: Colors.green,
                child: Text('2'),
              ),
              Container(
                width: 80.0,
                height: 80.0,
                color: Colors.blue,
                child: Text('3'),
              ),
              Container(
                width: 80.0,
                height: 80.0,
                color: Colors.yellow,
                child: Text('4'),
              ),
              Container(
                width: 80.0,
                height: 80.0,
                color: Colors.brown,
                child: Text('5'),
              ),
              Container(
                width: 80.0,
                height: 80.0,
                color: Colors.purple,
                child: Text('6'),
              ),
            ],
          ),
        ));
  }
}

class TestFlowdelegate extends FlowDelegate {
  EdgeInsets margin = EdgeInsets.zero;
  TestFlowdelegate({this.margin});
  @override
  void paintChildren(FlowPaintingContext context) {
    print("父容器尺寸:${context.size}");
    print("孩子个数:${context.childCount}");
    for (int i = 0; i < context.childCount; i++) {
      print("第$i个孩子尺寸:${context.getChildSize(i)}");
      context.paintChild(i, transform: Matrix4.translationValues(0, 0, 0));
    }

    // TODO: implement paintChildren
    // var x = margin.left;
    // var y = margin.top;
    // for (var i = 0; i < context.childCount; i++) {
    //   var w = context.getChildSize(i).width + x + margin.right;
    //   if (w < context.size.width) {
    //     context.paintChild(i, transform: Matrix4.translationValues(x, y, 0));
    //     x = w + margin.left;
    //   } else {
    //     x = margin.left;
    //     y += context.getChildSize(i).height + y + margin.top + margin.bottom;
    //     context.paintChild(i,
    //         transform: new Matrix4.translationValues(x, y, 0));
    //     x += context.getChildSize(i).width + margin.left + margin.right;
    //   }
    // }
  }

  // @override
  Size getSize(BoxConstraints constraints) {
    // TODO: implement getSize
    print(constraints);
    return Size(200, 200);
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    // return oldDelegate != this;
    return true;
  }
}
