import 'package:animation_presentation/routing/route_names.dart';
import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName) {
    return navigatorKey.currentState.pushNamed(routeName);
  }

  bool goBack() {
    bool isPopped = false;
    if (currentIndex > 0) {
      isPopped = navigatorKey.currentState.pop();
    }
    if (isPopped) {
      currentIndex--;
    }
    return isPopped;
  }

  Future<dynamic> navigateToNext() {
    if (currentIndex < routes.length - 1) {
      currentIndex = currentIndex + 1;

      return navigatorKey.currentState
          .pushNamed(routes.elementAt(currentIndex));
    }
  }

  // Add new routes here, also in [router.dart]
  List<String> routes = [
    HomeRoute,
    AnimationFunctionsSlideRoute,
    ImplicitAnimationsSlideRoute,
    AnimatedOpacitySlideRoute,
    AnimatedContainerSlideRoute,
    AnimatedPositionedSlideRoute,
    AnimatedDefaultTextStyleSlideRoute,
    GravityAnimationSlideRoute
  ];
  int currentIndex = 0;
}
