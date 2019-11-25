import 'package:animation_presentation/views/animated_opacity_slide/animated_opacity_slide_content_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AnimatedOpacitySlideView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: AnimatedOpacitySlideContentDesktop(),
    );
  }
}
