import 'package:flutter/material.dart';

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
          margin: EdgeInsets.only(left: 0, top: 468),
          width: 97,
          height: 48,
          child: Text(
            stepNumber,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 8, top: 537),
          width: 154,
          height: 24,
          child: Text(
            bodyTitle,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 8, top: 569),
          width: 191,
          height: 85,
          child: Text(
            bodyText,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 142, top: 529),
          padding: EdgeInsets.all(16),
          width: 307,
          height: 175,
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
