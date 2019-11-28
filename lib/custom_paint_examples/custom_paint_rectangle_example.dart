import 'package:flutter/material.dart';
import 'package:animation_presentation/constants/app_colors.dart';

class CustomPaintRectangleExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      child: CustomPaint(
        size: Size(300, 300),
        foregroundPainter: RectPainter(),
      ),
    );
  }
}

class RectPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var height = size.height;
    var width = size.width;

    var paint = Paint()
      ..color = accentColor
      ..style = PaintingStyle.fill;

    var rect1 = Rect.fromLTWH(
      width * 0.2,
      height * 0.2,
      width * 0.5,
      height * 0.5,
    );

    canvas.drawRect(rect1, paint);

    var rect2 = Rect.fromLTWH(
      width * 0.5,
      height * 0.5,
      width * 0.3,
      height * 0.3,
    );

    canvas.drawRRect(
        RRect.fromRectAndRadius(rect2, Radius.circular(16)),
        paint
          ..color = primaryColor
          ..style = PaintingStyle.stroke);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
