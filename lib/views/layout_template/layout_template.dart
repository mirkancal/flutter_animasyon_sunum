import 'package:animation_presentation/routing/route_names.dart';
import 'package:animation_presentation/routing/router.dart';
import 'package:animation_presentation/services/navigation_service.dart';
import 'package:animation_presentation/widgets/centered_view/centered_view.dart';
import 'package:animation_presentation/widgets/navigation_bar/navigation_bar.dart';
import 'package:animation_presentation/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:animation_presentation/widgets/slide_buttons/slide_buttons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? NavigationDrawer()
            : null,
        body: Stack(
          children: <Widget>[
            NavigationBar(),
            CenteredView(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Navigator(
                      key: Provider.of<NavigationService>(context).navigatorKey,
                      onGenerateRoute: generateRoute,
                      initialRoute: HomeRoute,
                    ),
                  )
                ],
              ),
            ),
            SlideButtons()
          ],
        ),
      ),
    );
  }
}
