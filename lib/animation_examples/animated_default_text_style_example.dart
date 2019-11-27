import 'package:animation_presentation/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleExample extends StatefulWidget {
  @override
  _AnimatedDefaultTextStyleExampleState createState() =>
      _AnimatedDefaultTextStyleExampleState();
}

class _AnimatedDefaultTextStyleExampleState
    extends State<AnimatedDefaultTextStyleExample> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 650,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: AnimatedDefaultTextStyle(
              curve: Curves.easeOutExpo,
              duration: Duration(milliseconds: 600),
              style: _isSelected
                  ? TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                      color: Colors.deepPurple,
                      fontStyle: FontStyle.italic)
                  : TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w200,
                      color: accentColor,
                      backgroundColor: primaryColor,
                    ),
              child: Text("AnimatedDefaultTextStyle"),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: FloatingActionButton(
              backgroundColor: primaryColor,
              child: Icon(
                Icons.arrow_upward,
                color: accentColor,
              ),
              onPressed: () {
                setState(() {
                  _isSelected = !_isSelected;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
