import 'package:animation_presentation/constants/app_colors.dart';
import 'package:animation_presentation/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:html' as html;

class SlideButtons extends StatefulWidget {
  const SlideButtons({
    Key key,
  }) : super(key: key);

  @override
  _SlideButtonsState createState() => _SlideButtonsState();
}

class _SlideButtonsState extends State<SlideButtons> {
  void keyboardNavigationListener(event) {
    html.KeyboardEvent kevent = event as html.KeyboardEvent;
    if (kevent.keyCode == 37) {
      Provider.of<NavigationService>(context).goBack();
    } else if (kevent.keyCode == 39) {
      Provider.of<NavigationService>(context).navigateToNext();
    }
  }

  @override
  void initState() {
    html.window.addEventListener('keydown', keyboardNavigationListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      right: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          FloatingActionButton(
            backgroundColor: accentColor,
            heroTag: 1,
            child: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Provider.of<NavigationService>(context).goBack();
            },
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            backgroundColor: accentColor,
            heroTag: 2,
            child: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Provider.of<NavigationService>(context).navigateToNext();
            },
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    html.window.removeEventListener('keydown', keyboardNavigationListener);
    super.dispose();
  }
}
