import 'package:animation_presentation/views/animated_default_text_style_slide/animated_default_text_style_slide_content_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AnimatedDefaultTextStyleSlideView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: AnimatedDefaultTextStyleSlideContentDesktop(),
    );
  }
}
