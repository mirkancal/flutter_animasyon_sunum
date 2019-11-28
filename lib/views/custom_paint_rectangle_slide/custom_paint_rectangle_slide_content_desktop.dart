import 'package:animation_presentation/custom_paint_examples/custom_paint_rectangle_example.dart';
import 'package:animation_presentation/widgets/slide_stack.dart/slide_stack.dart';
import 'package:animation_presentation/widgets/slide_title/slide_title.dart';
import 'package:flutter/material.dart';

class CustomPaintRectangleSlideContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideStack(
      children: <Widget>[
        SlideTitle(
          title: "drawRect & drawRRect",
        ),
        Align(
          child: CustomPaintRectangleExample(),
        )
      ],
    );
  }
}
