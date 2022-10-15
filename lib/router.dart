import 'package:checkdoc/pages/date_selection_page/date_selection_page.dart';
import 'package:checkdoc/pages/greeting_page/greeting_page.dart';
import 'package:checkdoc/pages/result_page/result_page.dart';
import 'package:checkdoc/pages/upload_page/upload_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/nav2/get_nav_config.dart';
import 'package:get/get_navigation/src/nav2/get_router_delegate.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:go_router/go_router.dart';
final GlobalKey<NavigatorState> _rootNavigatorKey =
GlobalKey<NavigatorState>();
GoRouter getRouter(BuildContext context) {
  return GoRouter(
    
    navigatorKey: _rootNavigatorKey,
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const GreetingPage();
        },
      ),
      GoRoute(
        path: '/upload',
        builder: (BuildContext context, GoRouterState state) {
          return const UploadPage();
        },
      ),
      GoRoute(
        path: '/date',
        builder: (BuildContext context, GoRouterState state) {
          return const DateSelectionPage();
        },
      ),
      GoRoute(
        path: '/result',
        builder: (BuildContext context, GoRouterState state) {
          return const ResultPage();
        },
      ),
    ],
  );
}
// abstract class AppPages {
//   static final pages = [
//     GetPage(
//       name: "/",
//       page: () => const GreetingPage(),
//     ),
//     GetPage(
//       name: "/upload",
//       page: () => UploadPage(),
//     ),
//     GetPage(
//       name: "/date",
//       page: () => DateSelectionPage(),
//     ),
//     GetPage(
//       name: "/result",
//       page: () => ResultPage(),
//     ),
//   ];
// }
// class AppRouterDelegate extends GetDelegate {
//   @override
//   Widget build(BuildContext context) {
//     return Navigator(
//       onPopPage: (route, result) => route.didPop(result),
//       pages: currentConfiguration != null
//           ? [currentConfiguration!.currentPage!]
//           : [GetNavConfig.fromRoute("/")!.currentPage!],
//     );
//   }
// }