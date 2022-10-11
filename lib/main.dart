import 'package:checkdoc/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CheckDocApp());
}

class CheckDocApp extends StatelessWidget {
  const CheckDocApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerConfig: getRouter(context),
      );
}