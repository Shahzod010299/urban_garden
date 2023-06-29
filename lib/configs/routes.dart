import 'package:flutter/material.dart';
import 'package:urban_garden/constants/navigation.dart';
import 'package:urban_garden/screens/home_page.dart';
import 'package:urban_garden/screens/splash_page.dart';

Route? generateRoutes(RouteSettings settings) {
  final args = settings.arguments;

  switch (settings.name) {
    case Navigation.SplashScreen:
      return buildRoute(settings, SplashPage());
  case Navigation.HomePage:
      return buildRoute(settings, HomePage());

  }
  return null;
}

MaterialPageRoute buildRoute(RouteSettings settings, Widget builder) {
  return MaterialPageRoute(
    builder: (BuildContext context) => builder,
    settings: settings,
  );
}
