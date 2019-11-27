import 'package:animation_presentation/views/spring_animation_slide/spring_animation_slide_content_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SpringAnimationSlideView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: SpringAnimationSlideContentDesktop(),
    );
  }
}
