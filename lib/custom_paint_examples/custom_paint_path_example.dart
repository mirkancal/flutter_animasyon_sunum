import 'package:animation_presentation/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomPaintPathExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      child: CustomPaint(
        size: Size(400, 400),
        painter: PathPainter(),
      ),
    );
  }
}

class PathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var height = size.height;
    var width = size.width;

    var paint = Paint()..color = primaryColor..strokeWidth = 10..style = PaintingStyle.stroke;
//    var path = Path()..addRect(Rect.fromLTWH(50, 50, 50, 50));
    var path = Path()
      ..moveTo(30, 30)
      ..lineTo(70, 70)..addArc(, startAngle, sweepAngle)
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
