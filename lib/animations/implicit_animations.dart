import 'package:flutter/material.dart';

class ImplicitAnimation extends StatefulWidget {
  const ImplicitAnimation({Key? key}) : super(key: key);

  @override
  State<ImplicitAnimation> createState() => _ImplicitAnimationState();
}

class _ImplicitAnimationState extends State<ImplicitAnimation> {
  double oldHeight = 150;
  double newHeight = 50;

  double oldWidth = 150;
  double newWidth = 50;

  var oldColor = Colors.red;
  final newColor = Colors.yellow;

  double oldOpacity = 0.2;
  double newOpacity = 0.8;
  double oldPositioned = -20;
  double newPositioned = -60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              AnimatedContainer(
                duration: Duration(seconds: 2),
                curve: Curves.bounceInOut,
                height: oldHeight,
                width: oldWidth,
                color: oldColor,
              ),
              SizedBox(
                height: 20,
              ),
              AnimatedOpacity(
                duration: Duration(seconds: 2),
                curve: Curves.easeInBack,
                opacity: oldOpacity,
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.blue,
                  ),
                  AnimatedPositioned(
                    duration: Duration(seconds: 2),
                    curve: Curves.easeInBack,
                    left: oldPositioned,
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    oldHeight = newHeight;
                    oldWidth = newWidth;
                    oldColor = newColor;
                    oldOpacity = newOpacity;
                    oldPositioned = newPositioned;
                  });
                },
                child: Text("Tap To Change"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
