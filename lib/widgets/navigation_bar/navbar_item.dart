import 'package:flutter/material.dart';
import 'dart:html' as html;

class NavBarItem extends StatelessWidget {
  final String title;
  final String url;
  const NavBarItem(this.title, this.url);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        html.window.open(url, "");
      },
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline,
      ),
    );
  }
}
