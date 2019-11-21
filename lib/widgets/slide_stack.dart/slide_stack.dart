import 'dart:math';

import 'package:animation_presentation/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SlideStack extends StatelessWidget {
  final List<Widget> children;
  const SlideStack({
    this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Transform.rotate(
          angle: pi / 72,
          child: CustomPaint(
            foregroundPainter: SlidePainter(),
            child: Container(
              decoration: BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          ),
        ),
        ...children
      ],
    );
  }
}

class SlidePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    Path path = Path()..moveTo(5, height * 0.3);
    var paint = Paint()
      ..color = accentColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;

    num degToRad(num deg) => deg * (pi / 180.0);
    path.cubicTo(
      width * 0.1,
      0,
      width * 0.2,
      height * 0.9,
      width * 0.5,
      height * 0.99,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}
