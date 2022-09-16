import 'dart:math';

import 'package:flutter/material.dart';

class explit_demo extends StatefulWidget {
  @override
  State<explit_demo> createState() => _explit_demoState();
}

AnimationController? _animationController;
Animation<Offset>? _animation;

class _explit_demoState extends State<explit_demo>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animationController!.repeat();
    _animation = Tween(begin: Offset(0, 0), end: Offset(1.5, 0)).animate(
      CurvedAnimation(
          parent: _animationController!, curve: Curves.easeOutCubic),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: _animationController!.view,
            builder: (context, child) {
              return Transform.rotate(
                angle: _animationController!.value * 2 * pi,
                child: FlutterLogo(
                  size: 200,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
