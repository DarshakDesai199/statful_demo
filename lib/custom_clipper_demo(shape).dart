import 'package:flutter/material.dart';

class CustomClipperDemo extends StatefulWidget {
  const CustomClipperDemo({Key? key}) : super(key: key);

  @override
  State<CustomClipperDemo> createState() => _CustomClipperDemoState();
}

class _CustomClipperDemoState extends State<CustomClipperDemo> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          ClipPath(
            clipper: MyCustomClipper(),
            child: Container(
              height: screenSize.height * 0.40,
              width: screenSize.width,
              color: Colors.green,
            ),
          )
        ],
      ),
    ));
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 896;
    path.lineTo(378 * _xScaling, 399.337158203125 * _yScaling);
    path.cubicTo(
      378 * _xScaling,
      399.337158203125 * _yScaling,
      309.4034118652344 * _xScaling,
      371.7181396484375 * _yScaling,
      309.4034118652344 * _xScaling,
      371.7181396484375 * _yScaling,
    );
    path.cubicTo(
      309.4034118652344 * _xScaling,
      371.7181396484375 * _yScaling,
      285.8882141113281 * _xScaling,
      268.6849975585938 * _yScaling,
      285.8882141113281 * _xScaling,
      268.6849975585938 * _yScaling,
    );
    path.cubicTo(
      285.8882141113281 * _xScaling,
      268.6849975585938 * _yScaling,
      285.8725280761719 * _xScaling,
      268.6163024902344 * _yScaling,
      285.8725280761719 * _xScaling,
      268.6163024902344 * _yScaling,
    );
    path.cubicTo(
      285.8725280761719 * _xScaling,
      268.6163024902344 * _yScaling,
      285.8384704589844 * _xScaling,
      268.5546264648438 * _yScaling,
      285.8384704589844 * _xScaling,
      268.5546264648438 * _yScaling,
    );
    path.cubicTo(
      285.8384704589844 * _xScaling,
      268.5546264648438 * _yScaling,
      230.3718414306641 * _xScaling,
      168.0583190917969 * _yScaling,
      230.3718414306641 * _xScaling,
      168.0583190917969 * _yScaling,
    );
    path.cubicTo(
      230.3718414306641 * _xScaling,
      168.0583190917969 * _yScaling,
      230.2292633056641 * _xScaling,
      167.7999420166016 * _yScaling,
      230.2292633056641 * _xScaling,
      167.7999420166016 * _yScaling,
    );
    path.cubicTo(
      230.2292633056641 * _xScaling,
      167.7999420166016 * _yScaling,
      229.9341125488281 * _xScaling,
      167.7999420166016 * _yScaling,
      229.9341125488281 * _xScaling,
      167.7999420166016 * _yScaling,
    );
    path.cubicTo(
      229.9341125488281 * _xScaling,
      167.7999420166016 * _yScaling,
      142.5741119384766 * _xScaling,
      167.7999420166016 * _yScaling,
      142.5741119384766 * _xScaling,
      167.7999420166016 * _yScaling,
    );
    path.cubicTo(
      142.5741119384766 * _xScaling,
      167.7999420166016 * _yScaling,
      142.3860473632812 * _xScaling,
      167.7999420166016 * _yScaling,
      142.3860473632812 * _xScaling,
      167.7999420166016 * _yScaling,
    );
    path.cubicTo(
      142.3860473632812 * _xScaling,
      167.7999420166016 * _yScaling,
      142.24462890625 * _xScaling,
      167.9238891601562 * _yScaling,
      142.24462890625 * _xScaling,
      167.9238891601562 * _yScaling,
    );
    path.cubicTo(
      142.24462890625 * _xScaling,
      167.9238891601562 * _yScaling,
      63.34604644775391 * _xScaling,
      237.0513610839844 * _yScaling,
      63.34604644775391 * _xScaling,
      237.0513610839844 * _yScaling,
    );
    path.cubicTo(
      63.34604644775391 * _xScaling,
      237.0513610839844 * _yScaling,
      0.5 * _xScaling,
      237.0513610839844 * _yScaling,
      0.5 * _xScaling,
      237.0513610839844 * _yScaling,
    );
    path.cubicTo(
      0.5 * _xScaling,
      237.0513610839844 * _yScaling,
      0.5 * _xScaling,
      0.5 * _yScaling,
      0.5 * _xScaling,
      0.5 * _yScaling,
    );
    path.cubicTo(
      0.5 * _xScaling,
      0.5 * _yScaling,
      431.5 * _xScaling,
      0.5 * _yScaling,
      431.5 * _xScaling,
      0.5 * _yScaling,
    );
    path.cubicTo(
      431.5 * _xScaling,
      0.5 * _yScaling,
      431.5 * _xScaling,
      237.4709014892578 * _yScaling,
      431.5 * _xScaling,
      237.4709014892578 * _yScaling,
    );
    path.cubicTo(
      431.5 * _xScaling,
      237.4709014892578 * _yScaling,
      378 * _xScaling,
      399.337158203125 * _yScaling,
      378 * _xScaling,
      399.337158203125 * _yScaling,
    );
    path.cubicTo(
      378 * _xScaling,
      399.337158203125 * _yScaling,
      378 * _xScaling,
      399.337158203125 * _yScaling,
      378 * _xScaling,
      399.337158203125 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
