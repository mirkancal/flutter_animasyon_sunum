import 'package:animation_presentation/views/tween_class_slide/tween_class_slide_content_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TweenClassSlideView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: TweenClassSlideContentDesktop(),
    );
  }
}
