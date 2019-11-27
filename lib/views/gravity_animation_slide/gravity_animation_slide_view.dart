import 'package:animation_presentation/views/gravity_animation_slide/gravity_animation_slide_content_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class GravityAnimationSlideView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: GravityAnimationSlideContentDesktop(),
    );
  }
}
