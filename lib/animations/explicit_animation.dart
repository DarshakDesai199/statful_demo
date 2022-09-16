import 'package:flutter/material.dart';

class ExplicitAnimation extends StatefulWidget {
  const ExplicitAnimation({Key? key}) : super(key: key);

  @override
  State<ExplicitAnimation> createState() => _ExplicitAnimationState();
}

class _ExplicitAnimationState extends State<ExplicitAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<Offset>? _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animationController!.repeat();
    _animation = Tween(begin: Offset(0, 0), end: Offset(1.5, 0)).animate(
      CurvedAnimation(parent: _animationController!, curve: Curves.bounceOut),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // AnimatedBuilder(
              //   animation: _animationController!.view,
              //   builder: (context, child) {
              //     return Transform.rotate(
              //       angle: _animationController!.value * 2 * pi,
              //       child: FlutterLogo(
              //         size: 200,
              //       ),
              //     );
              //   },
              // )
              AnimatedBuilder(
                animation: _animationController!.view,
                builder: (context, child) {
                  return SlideTransition(
                    position: _animation!,
                    child: FlutterLogo(
                      size: 200,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
