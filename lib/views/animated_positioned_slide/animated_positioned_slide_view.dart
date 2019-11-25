import 'package:animation_presentation/views/animated_positioned_slide/animated_positioned_slide_content_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AnimatedPositionedSlideView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: AnimatedPositionedSlideContentDesktop(),
    );
  }
}
