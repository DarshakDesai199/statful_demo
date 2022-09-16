import 'package:flutter/material.dart';

class FontFamily extends StatelessWidget {
  const FontFamily({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Mobile App",
            style: TextStyle(fontFamily: "Roboto", fontSize: 35),
          ),
          Center(
            child: Text(
              "Flutter App",
              style: TextStyle(
                  fontFamily: "Goblin One",
                  fontSize: 35,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Text(
            "Hii",
            style: TextStyle(fontFamily: 'Hubballi', fontSize: 35),
          )
        ],
      ),
    );
  }
}
