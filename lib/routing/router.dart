import 'package:animation_presentation/routing/route_names.dart';
import 'package:animation_presentation/views/animated_container_slide/animated_container_slide_view.dart';
import 'package:animation_presentation/views/animated_default_text_style_slide/animated_default_text_style_slide_view.dart';
import 'package:animation_presentation/views/animated_opacity_slide/animated_opacity_slide_view.dart';
import 'package:animation_presentation/views/animated_positioned_slide/animated_positioned_slide_view.dart';
import 'package:animation_presentation/views/animation_functions_slide/animation_functions_slide_view.dart';
import 'package:animation_presentation/views/custom_paint_circle_slide/custom_paint_circle_slide_view.dart';
import 'package:animation_presentation/views/custom_paint_heart_slide/custom_paint_heart_slide_view.dart';
import 'package:animation_presentation/views/custom_paint_path_slide/custom_paint_path_slide_view.dart';
import 'package:animation_presentation/views/gravity_animation_slide/gravity_animation_slide_view.dart';
import 'package:animation_presentation/views/home/home_view.dart';
import 'package:animation_presentation/views/implicit_animations/implicit_animations_slide_view.dart';
import 'package:animation_presentation/views/spring_animation_slide/spring_animation_slide_view.dart';
import 'package:animation_presentation/views/custom_paint_rectangle_slide/custom_paint_rectangle_slide_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView(), settings.name);
      break;

    case AnimationFunctionsSlideRoute:
      return _getPageRoute(AnimationFunctionsSlideView(), settings.name);
      break;

    case ImplicitAnimationsSlideRoute:
      return _getPageRoute(ImplicitAnimationsSlideView(), settings.name);
      break;

    case AnimatedOpacitySlideRoute:
      return _getPageRoute(AnimatedOpacitySlideView(), settings.name);
      break;

    case AnimatedContainerSlideRoute:
      return _getPageRoute(AnimatedContainerSlideView(), settings.name);
      break;

    case AnimatedPositionedSlideRoute:
      return _getPageRoute(AnimatedPositionedSlideView(), settings.name);
      break;

    case AnimatedDefaultTextStyleSlideRoute:
      return _getPageRoute(AnimatedDefaultTextStyleSlideView(), settings.name);
      break;

    case GravityAnimationSlideRoute:
      return _getPageRoute(GravityAnimationSlideView(), settings.name);
      break;

    case SpringAnimationSlideRoute:
      return _getPageRoute(SpringAnimationSlideView(), settings.name);
      break;

    case CustomPaintRectangleSlideRoute:
      return _getPageRoute(CustomPaintRectangleSlideView(), settings.name);
      break;

    case CustomPaintCircleSlideRoute:
      return _getPageRoute(CustomPaintCircleSlideView(), settings.name);
      break;
    case CustomPaintPathSlideRoute:
      return _getPageRoute(CustomPaintPathSlideView(), settings.name);
      break;
    case CustomPaintHeartSlideRoute:
      return _getPageRoute(CustomPaintHeartSlideView(), settings.name);
      break;
    default:
  }
}

PageRoute _getPageRoute(Widget child, String routeName) {
  return _FadeRoute(child: child, routeName: routeName);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({this.child, this.routeName})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          settings: RouteSettings(name: "$routeName"),
          transitionDuration: Duration(milliseconds: 600),
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              ScaleTransition(
            scale: Tween<double>(
              begin: 0.0,
              end: 1.0,
            ).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.easeInOutCirc,
              ),
            ),
            child: child,
          ),
        );
}
