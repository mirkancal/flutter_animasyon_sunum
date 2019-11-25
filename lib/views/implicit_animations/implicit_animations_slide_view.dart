import 'package:animation_presentation/views/implicit_animations/implicit_animations_slide_content_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ImplicitAnimationsSlideView extends StatelessWidget {
  const ImplicitAnimationsSlideView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: ImplicitAnimationsContentDesktop(),
    );
  }
}
