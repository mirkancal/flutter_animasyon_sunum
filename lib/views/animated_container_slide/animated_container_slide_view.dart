import 'package:animation_presentation/views/animated_container_slide/animated_container_slide_content_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AnimatedContainerSlideView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: AnimatedContainerSlideContentDesktop(),
    );
  }
}
