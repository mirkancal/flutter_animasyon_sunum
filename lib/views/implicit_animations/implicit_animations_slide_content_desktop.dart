import 'package:animation_presentation/widgets/slide_bullet_point/slide_bullet_point.dart';
import 'package:animation_presentation/widgets/slide_stack.dart/slide_stack.dart';
import 'package:animation_presentation/widgets/slide_title/slide_title.dart';
import 'package:flutter/material.dart';

class ImplicitAnimationsContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideStack(
      children: <Widget>[
        SlideTitle(
          title: "Implicit Animation Widgets",
        ),
        Padding(
          padding: const EdgeInsets.all(50),
          child: Align(
            alignment: Alignment(-0.3, 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SlideBulletPoint(
                  text:
                      "Animasyonu tetikleyecek spesifik özellikleri tanımla(color, size, height, position)",
                ),
                SlideBulletPoint(
                  text:
                      "Bu özellikler ile AnimatedHerhangiBirşeyWidget'ı yarat(AnimatedContainer)",
                ),
                SlideBulletPoint(
                  text:
                      "Widget'ı tekrar yaratıp animasyonu tetikle(setState ile bu özellikleri değiştir)",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
