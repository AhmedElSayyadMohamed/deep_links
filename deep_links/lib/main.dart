import 'package:deep_links/core/navigation/route_generator.dart';
import 'package:deep_links/features/home/view/home_screen.dart';
import 'package:deep_links/services/deep_links.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'core/navigation/routes.dart';
import 'features/product_details/view/product_details_screen.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // AppLinksDeepLink.instance.onInit();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // navigatorKey: navigatorKey,
      title: 'Deep links',
      // onGenerateRoute: RouteGenerator.getRoute,
      // initialRoute: Routes.homeRoute,
      routerConfig: router,
    );
  }
}
//
final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
      routes: [
        GoRoute(
          path: '${Routes.productDetailsRoute}/:id',
          name: Routes.productDetailsRoute,
          builder: (context, state) => ProductDetailsScreen(
            param: state.pathParameters,
          ),
        ),
      ],
    ),
  ],
);
//
// // <!-- android:launchMode="singleTop" -->
