import 'package:checkdoc/pages/greetingPage/greetingPage.dart';
import 'package:checkdoc/pages/uploadPage/uploadPage.dart';
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
          return GreetingPage();
        },
      ),
      GoRoute(
        path: '/upload',
        builder: (BuildContext context, GoRouterState state) {
          return UploadPage();
        },
      ),
    ],
  );
}
