import 'package:animation_presentation/animation_examples/animated_opacity_example.dart';
import 'package:animation_presentation/widgets/slide_stack.dart/slide_stack.dart';
import 'package:animation_presentation/widgets/slide_title/slide_title.dart';
import 'package:flutter/material.dart';

class AnimatedOpacitySlideContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SlideStack(
      children: <Widget>[
        SlideTitle(
          title: "AnimatedOpacity",
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: AnimatedOpacityExample(),
        )
      ],
    );
  }
}
