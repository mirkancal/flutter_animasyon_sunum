import 'package:animation_presentation/views/animation_functions_slide/animations_functions_slide_content_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AnimationFunctionsSlideView extends StatelessWidget {
  const AnimationFunctionsSlideView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: AnimationsFunctionsSlideContentDesktop(),
    );
  }
}
