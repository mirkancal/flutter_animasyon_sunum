import 'package:animation_presentation/constants/app_colors.dart';
import 'package:animation_presentation/services/navigation_service.dart';
import 'package:animation_presentation/views/layout_template/layout_template.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animasyon Sunumu',
      home: Provider(
        builder: (context) => NavigationService(),
        child: LayoutTemplate(),
      ),
      theme: themeData,
    );
  }
}

final themeData = ThemeData(
  primaryColor: accentColor,
  scaffoldBackgroundColor: backgroundColor,
  iconTheme: IconThemeData(
    color: backgroundColor,
  ),
  textTheme: TextTheme(
    body1: TextStyle(color: primaryColor, fontSize: 50),
    display1: TextStyle(color: backgroundColor, fontSize: 24),
    headline: TextStyle(color: backgroundColor, fontSize: 16),
    title:
        TextStyle(color: textColor, fontSize: 80, fontWeight: FontWeight.w800),
    button: TextStyle(color: accentColor, fontSize: 24),
  ),
);
