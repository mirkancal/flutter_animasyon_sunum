import 'package:flutter/material.dart';
import 'package:animation_presentation/constants/app_colors.dart';
import 'dart:math';

class CustomPaintCircleExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      child: CustomPaint(
        size: Size(500, 500),
        painter: CirclePainter(),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var height = size.height;
    var width = size.width;

    var paint = Paint()..color = primaryColor;
    var radius = width * 0.3;

    canvas.drawCircle(Offset(width * 0.5, height * 0.5), radius, paint);
    canvas.drawCircle(
      Offset(width * 0.5, height * 0.5),
      radius * 0.5,
      paint..color = accentColor,
    );
    canvas.drawCircle(
      Offset(width * 0.6, height * 0.6),
      radius * 0.3,
      paint..color = Colors.amber,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
