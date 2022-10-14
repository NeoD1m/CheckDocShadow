import 'package:checkdoc/router.dart';
import 'package:checkdoc/theme.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const CheckDocApp());
}

class CheckDocApp extends StatelessWidget {
  const CheckDocApp({super.key});

  @override
  Widget build(BuildContext context) => ResponsiveSizer(
      builder: (context, orientation, screenType) => MaterialApp.router(
            theme: getCheckDocTheme(),
            routerConfig: getRouter(context),
          ));
}
