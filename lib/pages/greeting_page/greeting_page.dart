import 'package:checkdoc/pages/greeting_page/background.dart';
import 'package:checkdoc/pages/greeting_page/greeting_widget.dart';
import 'package:checkdoc/pages/greeting_page/step_row.dart';
import 'package:checkdoc/pages/greeting_page/upload_button.dart';
import 'package:flutter/material.dart';

class GreetingPage extends StatelessWidget {
  const GreetingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          //margin: EdgeInsets.only(left: (100.w - 1440.px) / 2),
          width: 1440,
          height: 1024,
          child: Stack(
            children: const [
              BackgroundWidget(),
              GreetingWidget(),
              StepRow(),
              UploadButton(),
            ],
          ),
        ),
      ),
    );
  }
}
