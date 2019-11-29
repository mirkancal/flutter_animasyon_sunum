import 'package:animation_presentation/widgets/slide_bullet_point/slide_bullet_point.dart';
import 'package:animation_presentation/widgets/slide_stack.dart/slide_stack.dart';
import 'package:animation_presentation/widgets/slide_title/slide_title.dart';
import 'package:flutter/material.dart';

class AnimationControllerClassSlideContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideStack(
      children: <Widget>[
        SlideTitle(
          title: "AnimationController",
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
                      "Hardware yeni frame’e hazır olduğunda yeni değer üreten özel bir animasyon objesi.",
                ),
                SlideBulletPoint(
                  text:
                      "Varsayılan olarak 0.0 ve 1.0 arasında değerler üretiyor.",
                ),
                SlideBulletPoint(
                  text:
                      "Animation<T>’dan türüyor, Animation objesi gereken heryerde kullanılabilir.",
                ),
                SlideBulletPoint(
                  text: "Animasyonu kontrol etmek için methodları var.",
                ),
                SlideBulletPoint(
                  text:
                      "Bazı durumlarda 0.0-1.0 aralığının dışına çıkabilir(CurvedAnimation)",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
