import 'package:flutter/material.dart';

class StaggingAnimation extends StatelessWidget {
  StaggingAnimation({Key key, this.controller}) : super(key: key) {
    height = Tween<double>(begin: 0, end: 300).animate(CurvedAnimation(
        parent: controller, curve: Interval(0, 0.6, curve: Curves.ease)));
    color = ColorTween(begin: Colors.green, end: Colors.blue).animate(
        CurvedAnimation(
            parent: controller, curve: Interval(0, 0.6, curve: Curves.ease)));
    padding = EdgeInsetsTween(
            begin: EdgeInsets.only(left: 0), end: EdgeInsets.only(left: 100))
        .animate(CurvedAnimation(
            parent: controller, curve: Interval(0.6, 1, curve: Curves.ease)));
  }

  final Animation<double> controller;
  Animation<double> height;
  Animation<EdgeInsets> padding;
  Animation<Color> color;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (BuildContext context, Widget child) {
        return Container(
          alignment: Alignment.bottomLeft,
          padding: padding.value,
          child: Container(height: height.value, color: color.value, width: 50),
        );
      },
    );
  }
}
