import 'package:animation_presentation/views/custom_paint_path_slide/custom_paint_path_slide_content_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CustomPaintPathSlideView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: CustomPaintPathSlideContentDesktop(),
    );
  }
}
