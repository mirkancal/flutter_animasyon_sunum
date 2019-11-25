import 'package:flutter/material.dart';

class AnimatedPositionedExample extends StatefulWidget {
  @override
  _AnimatedPositionedExampleState createState() =>
      _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {
  double right = 10;
  double top = 10;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      child: Stack(
        children: <Widget>[
          AnimatedPositioned(
            curve: Curves.elasticIn,
            duration: Duration(seconds: 2),
            right: right,
            top: top,
            child: FlutterLogo(
              size: 200,
              colors: Colors.red,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: RaisedButton.icon(
              label: Text("Yer değiştir"),
              icon: Icon(Icons.track_changes),
              onPressed: () {
                setState(() {
                  right += 50;
                  top += 50;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
