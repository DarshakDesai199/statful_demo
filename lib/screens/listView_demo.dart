import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    height: 200,
                    decoration: BoxDecoration(
                      gradient: SweepGradient(
                        colors: [
                          Colors.red,
                          Colors.yellow,
                          Colors.blue,
                          Colors.green,
                          Colors.red,
                        ],
                        //stops: <double>[0.0, 0.25, 0.5, 0.75, 1.0],
                        tileMode: TileMode.clamp,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
