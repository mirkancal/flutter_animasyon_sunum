import 'package:animation_presentation/views/first_animation/first_animation_content_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FirstAnimationView extends StatelessWidget {
  const FirstAnimationView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: FirstAnimationContentDesktop(),
    );
  }
}
