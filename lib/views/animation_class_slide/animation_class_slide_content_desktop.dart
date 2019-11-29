import 'package:animation_presentation/widgets/slide_bullet_point/slide_bullet_point.dart';
import 'package:animation_presentation/widgets/slide_stack.dart/slide_stack.dart';
import 'package:animation_presentation/widgets/slide_title/slide_title.dart';
import 'package:flutter/material.dart';

class AnimationClassSlideContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideStack(
      children: <Widget>[
        SlideTitle(
          title: "Animation<T>",
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
                  text: "Animasyonun değerini ve durumunu içerir. (.value ile)",
                ),
                SlideBulletPoint(
                  text:
                      "Rendering ve build() fonksiyonu hakkında(ekranda ne olduğunu) birşey bilmiyor",
                ),
                SlideBulletPoint(
                  text: "İki değer arasında, verilen sürniede sayılar üretir",
                ),
                SlideBulletPoint(
                  text:
                      "Nasıl kontrol edildiğine göre, tersten de çalışabilir veya animasyonun ortasında yön değiştirebilir",
                ),
                SlideBulletPoint(
                  text:
                      "En yaygını Animation<double> fakat Color ve Size gibi birçok tipte enterpolasyon yapabilir",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
