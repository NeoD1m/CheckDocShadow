import 'package:checkdoc/pages/date_selection_page/date_selection_page.dart';
import 'package:checkdoc/pages/greeting_page/greeting_page.dart';
import 'package:checkdoc/pages/result_page/result_page.dart';
import 'package:checkdoc/pages/upload_page/upload_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(CheckDocApp());
}

class CheckDocApp extends StatelessWidget {
  CheckDocApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerConfig: _router,
      );

  final GoRouter _router = GoRouter(
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
