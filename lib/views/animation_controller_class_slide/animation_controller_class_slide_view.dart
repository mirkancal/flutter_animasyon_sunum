import 'package:animation_presentation/views/animation_controller_class_slide/animation_controller_class_slide_content_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AnimationControllerClassSlideView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: AnimationControllerClassSlideContentDesktop(),
    );
  }
}
