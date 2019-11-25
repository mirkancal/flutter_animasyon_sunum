import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  @override
  _AnimatedContainerExampleState createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  Color color;
  double borderRadius;
  double margin;

  @override
  void initState() {
    super.initState();
    color = Colors.deepPurple;
    borderRadius = randomBorderRadius();
    margin = randomMargin();
  }

  void change() {
    setState(() {
      margin = randomMargin();
      borderRadius = randomBorderRadius();
      color = randomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(
            width: 128,
            height: 128,
            child: AnimatedContainer(
              curve: Curves.bounceIn,
              duration: Duration(
                milliseconds: 600,
              ),
              margin: EdgeInsets.all(margin),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
          ),
          FloatingActionButton.extended(
            label: Text("Değiştir"),
            icon: Icon(Icons.change_history),
            onPressed: change,
          )
        ],
      ),
    );
  }
}

double randomBorderRadius() {
  return Random().nextDouble() * 64;
}

double randomMargin() {
  return Random().nextDouble() * 64;
}

Color randomColor() {
  return Color(0xFFFFFFFF & Random().nextInt(0xFFFFFFFF));
}
