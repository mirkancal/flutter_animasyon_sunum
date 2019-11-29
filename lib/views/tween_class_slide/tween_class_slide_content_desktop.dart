import 'package:animation_presentation/widgets/slide_bullet_point/slide_bullet_point.dart';
import 'package:animation_presentation/widgets/slide_stack.dart/slide_stack.dart';
import 'package:animation_presentation/widgets/slide_title/slide_title.dart';
import 'package:flutter/material.dart';

class TweenClassSlideContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideStack(
      children: <Widget>[
        SlideTitle(
          title: "Tween",
        ),
        Padding(
          padding: const EdgeInsets.all(100),
          child: Align(
            alignment: Alignment(-0.3, 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SlideBulletPoint(
                  text:
                      "AnimationController varsayılan olarak 0.0’dan 1.0’a kadar olan aralığı kullanıyor",
                ),
                SlideBulletPoint(
                  text:
                      "Farklı bir aralık veya farklı bir veri tipi için Tween’i kullanabiliriz",
                ),
                SlideBulletPoint(
                  text:
                      "Tween objesi sadece başlangıç ve bitiş değerine ihtiyacı var",
                ),
                SlideBulletPoint(
                  text:
                      "Tek görevi input aralığını output aralığıyla eşleştirmek",
                ),
                SlideBulletPoint(
                  text:
                      "State saklamıyor, evaluate(Animation<double> animation) methodu ile anlık hesaplıyor",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
