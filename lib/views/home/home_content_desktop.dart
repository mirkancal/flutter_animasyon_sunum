import 'dart:math';

import 'package:animation_presentation/widgets/slide_stack.dart/slide_stack.dart';
import 'package:flutter/material.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideStack(
      children: <Widget>[
        _MainTitle(),
      ],
    );
  }
}

class _MainTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(0, -0.6),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Text(
          "Flutter'da Animasyonlar ve\nCustom Painting",
          style: Theme.of(context).textTheme.title,
        ),
      ),
    );
  }
}
