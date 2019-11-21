import 'dart:math';

import 'package:animation_presentation/constants/app_colors.dart';
import 'package:flutter/material.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Transform.rotate(
          angle: pi / 72,
          child: CustomPaint(
            foregroundPainter: HomeContentPainter(),
            child: Container(
              decoration: BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment(0, -0.6),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              "Flutter'da Animasyonlar ve\nCustom Painting",
              style: Theme.of(context).textTheme.title,
            ),
          ),
        )
      ],
    );
  }
}

class HomeContentPainter extends CustomPainter {
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
