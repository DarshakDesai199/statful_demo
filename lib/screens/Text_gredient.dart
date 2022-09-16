import 'package:flutter/material.dart';

class Text_gredient extends StatelessWidget {
  const Text_gredient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Hello Flutter",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..shader = LinearGradient(
                          colors: [Colors.red, Colors.green, Colors.yellow])
                      .createShader(
                    Rect.fromLTWH(150, 30, 200, 70),
                  ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
