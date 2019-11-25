import 'package:animation_presentation/animation_examples/animated_container_example.dart';
import 'package:animation_presentation/widgets/slide_stack.dart/slide_stack.dart';
import 'package:animation_presentation/widgets/slide_title/slide_title.dart';
import 'package:flutter/material.dart';

class AnimatedContainerSlideContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideStack(
      children: <Widget>[
        SlideTitle(
          title: "AnimatedContainer",
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: AnimatedContainerExample(),
        )
      ],
    );
  }
}
