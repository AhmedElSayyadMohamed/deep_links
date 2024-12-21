// import 'dart:async';
// import 'package:app_links/app_links.dart';
// import 'package:flutter/material.dart';
//
// class AppLinksDeepLink {
// // singleton
//
//   AppLinksDeepLink._privateConstructor();
//
//   static final AppLinksDeepLink _instance =
//       AppLinksDeepLink._privateConstructor();
//
//   static AppLinksDeepLink get instance => _instance;
//
//   late AppLinks _appLinks;
//   StreamSubscription<Uri>? _linkSubscription;
//
//   void onInit() {
//     _appLinks = AppLinks();
//     getInitialLink();
//   }
//
//   Future<void> getInitialLink() async {
//     // Check initial link if app was in cold state (terminated)
//     final appLink = await _appLinks.getInitialLink();
//
//     if (appLink != null) {
//       var uri = Uri.parse(appLink.toString());
//       String routeName = uri.queryParameters['route'].toString();
//       // navigatorKey.currentState!.pushNamed(routeName);
//     }
//
//     // Handle link when app is in warm state (front or background)
//     _linkSubscription = _appLinks.uriLinkStream.listen(
//       (uriValue) {
//         if (uriValue != null) {
//           var uri = Uri.parse(uriValue.toString());
//
//           String routeName = uri.queryParameters['route'].toString();
//           print('route is : $routeName');
//           // router.goNamed('details');
//         }
//       },
//       onError: (err) {
//         debugPrint('====>>> error : $err');
//       },
//       onDone: () {
//         _linkSubscription?.cancel();
//       },
//     );
//   }
// }
