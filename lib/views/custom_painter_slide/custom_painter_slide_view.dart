import 'package:animation_presentation/views/custom_painter_slide/custom_painter_slide_content_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CustomPainterSlideView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: CustomPainterSlideContentDesktop(),
    );
  }
}
