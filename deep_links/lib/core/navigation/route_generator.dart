import 'package:deep_links/core/navigation/routes.dart';
import 'package:deep_links/features/home/view/home_screen.dart';
import 'package:deep_links/features/product_details/view/product_details_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings setting) {
    String routeName = setting.name ?? Routes.homeRoute;
    switch (routeName) {
      case Routes.homeRoute:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
      case Routes.productDetailsRoute:
        return MaterialPageRoute(
          builder: (_) => ProductDetailsScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text("No Routes"),
            ),
          ),
        );
    }
  }
}
