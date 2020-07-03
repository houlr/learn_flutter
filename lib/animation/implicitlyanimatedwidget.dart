import 'package:flutter/material.dart';

class ImplicitlyAnimatedWidgetBox extends ImplicitlyAnimatedWidget {
  ImplicitlyAnimatedWidgetBox({
    Key key,
    @required this.decoration,
    this.child,
    Curve curve = Curves.linear,
    @required Duration duration,
  }) : super(
          key: key,
          curve: curve,
          duration: duration,
        );
  final Decoration decoration;
  final Widget child;
  @override
  RouteState createState() => RouteState();
}

class RouteState extends AnimatedWidgetBaseState<ImplicitlyAnimatedWidgetBox> {
  DecorationTween _tween;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: _tween.evaluate(animation),
      child: widget.child,
    );
  }

  @override
  void forEachTween(visitor) {
    _tween = visitor(
        _tween, widget.decoration, (value) => DecorationTween(begin: value));
  }
}
