import 'package:checkdoc/pages/greetingPage/stepText.dart';
import 'package:checkdoc/pages/uploadPage/uploadPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GreetingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [StepTextWidget(), StepTextWidget(), StepTextWidget()],
          ),
          ElevatedButton(
              onPressed: () => context.go("/upload"), child: Text("Начать проверку"))
        ],
      ),
    );
  }
}
