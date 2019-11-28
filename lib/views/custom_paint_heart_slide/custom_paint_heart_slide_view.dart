import 'package:animation_presentation/views/custom_paint_heart_slide/custom_paint_heart_slide_content_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CustomPaintHeartSlideView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: CustomPaintHeartSlideContentDesktop(),
    );
  }
}
