import 'package:flutter/material.dart';

class AnimatedSwitcherRoute extends StatefulWidget {
  AnimatedSwitcherRoute({Key key}) : super(key: key);
  @override
  RouteState createState() => RouteState();
}

class RouteState extends State<AnimatedSwitcherRoute> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('PageBuilderRoute'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                return ScaleTransition(
                  scale: animation,
                  child: child,
                );
              },
              child: Text(
                '$_count',
                key: ValueKey<int>(_count),
              ),
            ),
            AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                var tween =
                    Tween<Offset>(begin: Offset(1.0, 0), end: Offset(0, 0));
                return SlideTransition(
                  position: tween.animate(animation),
                  child: child,
                );
              },
              child: Text(
                '$_count',
                key: ValueKey<int>(_count),
              ),
            ),
            FlatButton(
                onPressed: () {
                  setState(() {
                    _count++;
                  });
                },
                child: Text('+++'))
          ],
        )));
  }
}

class SlideTransition extends AnimatedWidget {
  SlideTransition({
    Key key,
    @required Animation<Offset> position,
    this.transformHitTest = true,
    this.child,
  })  : assert(position != null),
        super(key: key, listenable: position);
  final bool transformHitTest;
  final Widget child;
  Animation<Offset> get position => listenable;
  @override
  Widget build(BuildContext context) {
    Offset offset = position.value;
    if (position.status == AnimationStatus.reverse) {
      offset = Offset(-offset.dx, offset.dy);
    }
    return FractionalTranslation(
      translation: offset,
      transformHitTests: transformHitTest,
      child: child,
    );
  }
}
