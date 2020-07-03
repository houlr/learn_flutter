import 'package:flutter/material.dart';
import './staggerAnimation.dart';

class StaggingRoute extends StatefulWidget {
  StaggingRoute({Key key}) : super(key: key);
  @override
  RouteState createState() => RouteState();
}

class RouteState extends State<StaggingRoute> with TickerProviderStateMixin {
  AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));
  }

  Future<Null> _playAnimation() async {
    try {
      await _controller.forward().orCancel;
      await _controller.reverse().orCancel;
    } on TickerCanceled {
      print('animation cancel widget dispose');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('PageBuilderRoute'),
        ),
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            _playAnimation();
          },
          child: Center(
              child: Container(
            width: 300.0,
            height: 300.0,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                border: Border.all(color: Colors.black.withOpacity(0.5))),
            child: StaggingAnimation(
              controller: _controller,
            ),
          )),
        ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
