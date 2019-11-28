import 'package:flutter/material.dart';
class CustomPaintHeartExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        foregroundPainter: HeartPainter(),
        child: Container(
          color: Colors.blue,
          height: 500,
          width: 500,
        ),
      ),
    );
  }
}

class HeartPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var width = size.width;
    var height = size.height;
    var paint = Paint()..color = Colors.red;

    var path = Path();

    path..moveTo(width * 0.5, 100)..cubicTo(
      width * 0.25,
      25,
      0,
      80,
      width * 0.5,
      height - 100,
    );

    path
      ..moveTo(width * 0.5, 100)
      ..cubicTo(
        width * 0.75,
        25,
        width,
        80,
        width * 0.5,
        height - 100,
      );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

}
