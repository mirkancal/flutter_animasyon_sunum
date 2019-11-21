import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  const CenteredView({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        double horizontalPadding =
            sizingInformation.deviceScreenType == DeviceScreenType.Desktop
                ? 70
                : 30;
        return Container(
          padding: EdgeInsets.only(
            left: horizontalPadding,
            right: horizontalPadding,
            top: 120,
            bottom: 60,
          ),
          alignment: Alignment.topCenter,
          child: child,
        );
      },
    );
  }
}
