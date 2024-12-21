// import 'dart:developer';
// import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
// import 'package:tasks_app/core/navigation/routes.dart';
// import 'package:tasks_app/main.dart';
// import 'base_dynamic_links.dart';
//
// class FirebaseDynamicLink extends BaseDynamicLinksServices {
//   static final FirebaseDynamicLink singleton = FirebaseDynamicLink._internal();
//   factory FirebaseDynamicLink() => singleton;
//   FirebaseDynamicLink._internal();
//
//   final FirebaseDynamicLinksPlatform _instance =
//       FirebaseDynamicLinksPlatform.instance;
//
//   @override
//   Future<String> createProductLink({
//     required int id,
//     required String imageUrl,
//     required String title,
//     required String description,
//   }) async {
//     final dynamicLinkParams = DynamicLinkParameters(
//       socialMetaTagParameters: SocialMetaTagParameters(
//         imageUrl: Uri.parse(imageUrl),
//         title: title,
//         description: description,
//       ),
//       link: Uri.parse('$link/detailsScreen'),
//      // '$link/product?id=$id&title=$title&desc=$description&route=$route'
//
//       uriPrefix: uriPrefix,
//       androidParameters: const AndroidParameters(
//         packageName: androidPackageName,
//         minimumVersion: 1,
//       ),
//       iosParameters: const IOSParameters(
//         bundleId: iosPackageName,
//         minimumVersion: '1',
//       ),
//     );
//
//     final dynamicLink = await _instance.buildShortLink(dynamicLinkParams).catchError((error){
//       print(error.toString());
//     });
//
//     log(dynamicLink.shortUrl.toString());
//     return dynamicLink.shortUrl.toString();
//   }
//
//   @override
//   getInitialLink() async {
//     // Check if you received the link via `getInitialLink` first
//     final PendingDynamicLinkData? initialLink =
//         await FirebaseDynamicLinks.instance.getInitialLink().catchError((error){
//       print(error.toString());
//     });
//
//
//     if (initialLink != null) {
//       final Uri deepLink = initialLink.link;
//       // Example of using the dynamic link to push the user to a different screen
//       print(deepLink.path);
//       // Navigator.pushNamed(context, deepLink.path);
//     }else{
//       print('onTerimnated hunter');
//     }
//
//     // Set up the `onLink` event listener next as it may be received here
//     FirebaseDynamicLinks.instance.onLink.listen(
//       (pendingDynamicLinkData) {
//         if (pendingDynamicLinkData != null) {
//           final Uri deepLink = pendingDynamicLinkData.link;
//           // Example of using the dynamic link to push the user to a different screen
//           print("deepLink : ${deepLink.queryParameters}");
//           navigatorKey.currentState!.pushReplacementNamed(Routes.homeRoute);
//           // Navigator.pushNamed(context, deepLink.path);
//         }else{
//           print('hunter');
//         }
//       },
//     );
//   }
// }
//
// const String link = 'https://play.google.com/store/apps/details?id=com.mercury.cairoIctApp&pcampaignid=web_share';
// const String uriPrefix = 'https://ramadancompetition.page.link';
// const String androidPackageName = 'com.example.tasks_app';
// const String iosPackageName = 'com.example.tasks_app.ios';
