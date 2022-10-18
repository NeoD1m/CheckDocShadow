import 'package:checkdoc/pages/greeting_page/widgets/background.dart';
import 'package:checkdoc/pages/greeting_page/widgets/begin_button.dart';
import 'package:checkdoc/pages/greeting_page/widgets/greeting_widget.dart';
import 'package:checkdoc/pages/greeting_page/widgets/step_row.dart';
import 'package:flutter/material.dart';

import '../../widgets/checkdoc_scaler.dart';

class GreetingPage extends StatelessWidget {
  const GreetingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CheckDocScaler(
        children: [
          BackgroundWidget(),
          GreetingWidget(),
          StepRow(),
          BeginButton(),
        ],
      ),
    );
  }
}
