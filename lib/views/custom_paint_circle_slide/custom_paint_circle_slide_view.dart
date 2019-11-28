import 'package:animation_presentation/views/custom_paint_circle_slide/custom_paint_circle_slide_content_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CustomPaintCircleSlideView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: CustomPaintCircleSlideContentDesktop(),
    );
  }
}
