import 'package:flutter/material.dart';

class AnimatedDecoratedBox extends StatefulWidget {
  AnimatedDecoratedBox(
      {Key key,
      @required this.decoration,
      this.child,
      this.curve = Curves.linear,
      @required this.duration,
      this.reverseDuration})
      : super(key: key);
  final Decoration decoration;
  final Widget child;
  final Curve curve;
  final Duration duration;
  final Duration reverseDuration;
  @override
  RouteState createState() => RouteState();
}

class RouteState extends State<AnimatedDecoratedBox>
    with SingleTickerProviderStateMixin {
  @protected
  AnimationController get controller => _controller;
  AnimationController _controller;

  Animation<double> _animation;
  Animation<double> get animation => _animation;

  DecorationTween _tween;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      child: widget.child,
      builder: (context, child) {
        return DecoratedBox(
          decoration: _tween.animate(_controller).value,
          child: widget.child,
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
      reverseDuration: widget.reverseDuration,
    );
    // 渲染的初始值，为蓝色
    _tween = DecorationTween(begin: widget.decoration);
    _updateCurve();
  }

  void _updateCurve() {
    if (widget.curve != null)
      _animation = CurvedAnimation(parent: _controller, curve: widget.curve);
    else
      _animation = _controller;
  }

  @override
  void didUpdateWidget(AnimatedDecoratedBox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.curve != oldWidget.curve) _updateCurve();
    _controller.duration = widget.duration;
    _controller.reverseDuration = widget.reverseDuration;
    // 按钮事件赋值触发颜色变换，新的decoration的color跟原来的不一样，触发动画，重点是新的color
    if (widget.decoration != (_tween.begin ?? _tween.end)) {
      _tween
        ..begin = _tween.evaluate(_animation)
        ..end = widget.decoration;
      _controller
        ..value = 0.0
        ..forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
