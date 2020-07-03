import 'package:flutter/material.dart';

class AnimationRoute extends StatefulWidget {
  AnimationRoute({Key key}) : super(key: key);
  @override
  AnimationRouteState createState() => AnimationRouteState();
}

class AnimationRouteState extends State<AnimationRoute>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
        vsync: this, duration: const Duration(seconds: 3));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeInOut);
    animation = new Tween(begin: 10.0, end: 100.0).animate(animationController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          animationController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          animationController.forward();
        }
      });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('123456'),
        ),
        body: GrowTransition(
            child: Image.asset('image/t.png'), animation: animation)
        // AnimatedBuilder(
        //   animation: animation,
        //   child: Image.asset('image/t.png'),
        //   builder: (BuildContext context, Widget child) {
        //     return Center(
        //       child: Container(
        //         child: child,
        //         width: animation.value,
        //         height: animation.value,
        //       ),
        //     );
        //   },
        // )
        // AnimatedImage(
        //   animation: animation,
        // )
        // Center(
        //   child: Image.asset(
        //     'image/t.png',
        //     width: animation.value,
        //     height: animation.value,
        //   ),
        // )
        );
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
}

class AnimatedImage extends AnimatedWidget {
  AnimatedImage({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return new Center(
      child: Image.asset(
        'image/t.png',
        width: animation.value,
        height: animation.value,
      ),
    );
  }
}

class GrowTransition extends StatelessWidget {
  GrowTransition({this.child, this.animation});
  final Widget child;
  final Animation animation;
  Widget build(
    BuildContext context,
  ) {
    return Center(
      child: new AnimatedBuilder(
        animation: animation,
        child: child,
        builder: (BuildContext context, Widget child) {
          return new Container(
            child: child,
            width: animation.value,
            height: animation.value,
          );
        },
      ),
    );
  }
}
