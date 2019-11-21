import 'package:animation_presentation/constants/app_colors.dart';
import 'package:animation_presentation/constants/social_urls.dart';
import 'package:flutter/material.dart';

import 'navbar_item.dart';
import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: primaryColor,
        boxShadow: [
          BoxShadow(
            color: accentColor,
            blurRadius: 20,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: NavBarLogo(),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Medium', mediumUrl),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Slack', slackUrl),
              SizedBox(
                width: 30,
              ),
            ],
          )
        ],
      ),
    );
  }
}
