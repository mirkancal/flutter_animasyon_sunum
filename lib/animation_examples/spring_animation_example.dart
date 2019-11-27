import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

class SpringAnimationExample extends StatefulWidget {
  @override
  _SpringAnimationExampleState createState() => _SpringAnimationExampleState();
}

class _SpringAnimationExampleState extends State<SpringAnimationExample>
    with TickerProviderStateMixin {
  AnimationController _firstController;
  SpringSimulation _firstSimulation;

  var _firstSpring;

  AnimationController _secondController;
  SpringSimulation _secondSimulation;

  var _secondSpring;
  @override
  void initState() {
    _firstSpring = SpringDescription(mass: 1, stiffness: 300, damping: 1);
    _firstSimulation = SpringSimulation(_firstSpring, 0, 200, 10);
    _firstController = AnimationController(
      vsync: this,
      upperBound: 500,
    )..addListener(() {
        print(_firstController.value);
        setState(() {});
      });

    _firstController.animateWith(_firstSimulation);

    _secondSpring = SpringDescription(mass: 1, stiffness: 100, damping: 1);
    _secondSimulation = SpringSimulation(_secondSpring, 0, 200, 10);
    _secondController = AnimationController(
      vsync: this,
      upperBound: 500,
    )..addListener(() {
        print(_secondController.value);
        setState(() {});
      });

    _secondController.animateWith(_secondSimulation);
    super.initState();
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
            top: _firstController.value,
            height: 50,
            width: 50,
            child: Container(
              color: Colors.deepPurpleAccent,
            ),
          ),
          Positioned(
            right: 50,
            top: _secondController.value,
            height: 50,
            width: 50,
            child: Container(
              color: Colors.blue[900],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _firstController.dispose();
    super.dispose();
  }
}
