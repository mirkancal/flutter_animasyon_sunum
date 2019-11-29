import 'package:animation_presentation/views/animation_terms_slide/animation_terms_slide_content_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AnimationTermsSlideView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: AnimationTermsSlideContentDesktop(),
    );
  }
}
