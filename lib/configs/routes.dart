import 'package:flutter/material.dart';
import 'package:urban_garden/constants/navigation.dart';
import 'package:urban_garden/screens/all_my_area_page.dart';
import 'package:urban_garden/screens/category_page.dart';
import 'package:urban_garden/screens/home_page.dart';
import 'package:urban_garden/screens/me_recommendation_page.dart';
import 'package:urban_garden/screens/splash_page.dart';

Route? generateRoutes(RouteSettings settings) {
  final args = settings.arguments;

  switch (settings.name) {
    case Navigation.SplashScreen:
      return buildRoute(settings, SplashPage());
  case Navigation.HomePage:
      return buildRoute(settings, HomePage());
  case Navigation.AllMyAreaPage:
      return buildRoute(settings, AllMyAreaPage());
     case Navigation.CategoryPage:
      return buildRoute(settings, CategoryPage());

    case Navigation.MeReccomendationPage:
      return buildRoute(settings, MeReccomendationPage());


  }
  return null;
}

MaterialPageRoute buildRoute(RouteSettings settings, Widget builder) {
  return MaterialPageRoute(
    builder: (BuildContext context) => builder,
    settings: settings,
  );
}
