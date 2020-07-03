import 'package:flutter/material.dart';

class FadeRoute extends PageRoute {
  FadeRoute(
      {@required this.builder,
      this.transitionDuration = const Duration(milliseconds: 300),
      this.barrierColor,
      this.barrierLabel,
      this.maintainState = true});
  final WidgetBuilder builder;
  @override
  final Duration transitionDuration;
  @override
  final Color barrierColor;
  @override
  final String barrierLabel;
  @override
  final bool maintainState;
  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAniamtion) =>
      builder(context);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAniamtion, Widget child) {
    if (isActive) {
      return new FadeTransition(opacity: animation, child: builder(context));
    } else {
      // return Padding(padding: EdgeInsets.zero);
      return Container();
    }
  }
}
