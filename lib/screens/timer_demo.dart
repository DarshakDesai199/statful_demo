import 'dart:async';

import 'package:flutter/material.dart';

class TimerDemo extends StatefulWidget {
  const TimerDemo({Key? key}) : super(key: key);

  @override
  _TimerDemoState createState() => _TimerDemoState();
}

int _count = 60;
Timer? _timer;

class _TimerDemoState extends State<TimerDemo> {
  void startTimer() {
    _timer = Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        if (_count > 0) {
          setState(
            () {
              _count--;
            },
          );
        } else {
          timer.cancel();
        }
      },
    );
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "$_count",
                style: TextStyle(fontSize: 25),
              ),
            )
          ],
        ),
      ),
    );
  }
}
