import 'package:flutter/material.dart';

class SlideBulletPoint extends StatelessWidget {
  const SlideBulletPoint({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "- $text",
        style: Theme.of(context).textTheme.body1,
      ),
    );
  }
}
