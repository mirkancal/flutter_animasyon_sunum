import 'package:animation_presentation/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

class GravityAnimationExample extends StatefulWidget {
  @override
  _GravityAnimationExampleState createState() =>
      _GravityAnimationExampleState();
}

class _GravityAnimationExampleState extends State<GravityAnimationExample>
    with TickerProviderStateMixin {
  AnimationController firstController;

  AnimationController secondController;
  GravitySimulation firstSimulation;

  GravitySimulation secondSimulation;

  GravitySimulation thirdSimulation;

  @override
  void initState() {
    super.initState();

    firstSimulation = GravitySimulation(
      100.0, // acceleration
      0.0, // starting point
      500.0, // end point
      0.0, // starting velocity
    );
    secondSimulation = GravitySimulation(
      200.0, // acceleration
      0.0, // starting point
      500.0, // end point
      0.0, // starting velocity
    );
    firstController = AnimationController(vsync: this, upperBound: 500)
      ..addListener(() {
        setState(() {});
      });
    secondController = AnimationController(vsync: this, upperBound: 500)
      ..addListener(() {
        setState(() {});
      });

    firstController.animateWith(firstSimulation);
    secondController.animateWith(secondSimulation);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 300,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 50,
            top: firstController.value,
            height: 50,
            width: 50,
            child: Container(
              color: Colors.orange,
            ),
          ),
          Positioned(
            right: 50,
            top: secondController.value,
            height: 50,
            width: 50,
            child: Container(
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    firstController.dispose();
    super.dispose();
  }
}
