import 'package:flutter/material.dart';

class StepWidget extends StatelessWidget {
  const StepWidget({Key? key, required this.stepTitle, required this.bodyText, required this.bodyTitle}) : super(key: key);

  final String stepTitle;
  final String bodyTitle;
  final String bodyText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            stepTitle,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
          ),
          SizedBox(height: 25),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
            width: 400,
            height: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bodyTitle,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
                SizedBox(height: 10),
                Container(
                  width: 250,
                  child: Text(
                    bodyText,
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
