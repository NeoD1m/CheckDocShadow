import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class StepWidget extends StatelessWidget {
  const StepWidget({Key? key, required this.bodyText, required this.bodyTitle, required this.stepNumber}) : super(key: key);

  final String stepNumber;
  final String bodyTitle;
  final String bodyText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          margin: EdgeInsets.only(left: 0.px, top: 468.px),
          width: 97.px,
          height: 48.px,
          child: Text(
            stepNumber,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 8.px, top: 537.px),
          width: 154.px,
          height: 24.px,
          child: Text(
            bodyTitle,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 8.px, top: 569.px),
          width: 191.px,
          height: 85.px,
          child: Text(
            bodyText,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 142.px, top: 529.px),
          padding: EdgeInsets.all(16.px),
          width: 307.px,
          height: 175.px,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
            ],
          ),
        ),
      ],
    );
  }
}
