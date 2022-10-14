import 'package:checkdoc/pages/greeting_page/background.dart';
import 'package:checkdoc/pages/greeting_page/greeting_widget.dart';
import 'package:checkdoc/pages/greeting_page/step_row.dart';
import 'package:checkdoc/pages/greeting_page/upload_button.dart';
import 'package:flutter/material.dart';

class GreetingPage extends StatelessWidget {
  const GreetingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.7,
          child: Stack(
            children: [
              const BackgroundWidget(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 200, top: 100),
                    child: GreetingWidget(),
                  ),
                  SizedBox(height: 100),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 200),
                    child: StepRow(),
                  ),
                  //SizedBox(height: 50),

                ],),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        margin: EdgeInsets.only(bottom: 100),
                        child: UploadButton())),
            ],
          ),
        ),
      ),
    );
  }
}
