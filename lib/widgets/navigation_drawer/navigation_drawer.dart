import 'package:animation_presentation/constants/app_colors.dart';
import 'package:animation_presentation/constants/social_urls.dart';
import 'package:animation_presentation/widgets/navigation_drawer/drawer_item.dart';
import 'package:animation_presentation/widgets/navigation_drawer/navigation_drawer_header.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 275,
      decoration: BoxDecoration(
        color: primaryColor,
        boxShadow: [
          BoxShadow(color: Colors.black87, blurRadius: 16),
        ],
      ),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem('Medium', FontAwesomeIcons.mediumM, mediumUrl),
          DrawerItem('Slack', FontAwesomeIcons.slack, slackUrl),
        ],
      ),
    );
  }
}
