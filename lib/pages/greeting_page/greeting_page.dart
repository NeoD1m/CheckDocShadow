import 'package:checkdoc/pages/greeting_page/step_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GreetingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: 20, top: 30),
              width: 100,
              height: 100,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/leading.png"))),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(right: 100),
              width: 550,
              height: 550,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/logo.png"), fit: BoxFit.fitWidth)),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 450,
                margin: EdgeInsets.only(top: 100, bottom: 20, left: 150, right: 150),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 64, fontWeight: FontWeight.w700),
                    children: [
                      TextSpan(text: "Приветствую, это чек"),
                      TextSpan(text: "DOC", style: TextStyle(fontSize: 64, fontWeight: FontWeight.w700, color: Colors.blue)),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 150),
                width: 500,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    children: [
                      TextSpan(text: "Проверяйте с помощью чек"),
                      TextSpan(text: "DOC ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.blue)),
                      TextSpan(text: "акутальность нормативных актов, просто и удобно"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 150),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 150),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    StepWidget(
                      stepTitle: "Шаг1",
                      bodyTitle: "Выберите документ",
                      bodyText: "Проверять действие НПА стало проще, просто загрузите документы, остальное сделаем Мы",
                    ),
                    StepWidget(
                      stepTitle: "Шаг1",
                      bodyTitle: "Выберите документ",
                      bodyText: "Проверять действие НПА стало проще, просто загрузите документы, остальное сделаем Мы",
                    ),
                    StepWidget(
                      stepTitle: "Шаг1",
                      bodyTitle: "Выберите документ",
                      bodyText: "Проверять действие НПА стало проще, просто загрузите документы, остальное сделаем Мы",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 80),
              Container(
                width: double.infinity,
                height: 150,
                child: OutlinedButton(
                  onPressed: () => context.go("/upload"),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color(0xFF89B933),
                  ),
                  child: Text(
                    "Начать проверку",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
// ElevatedButton(
// onPressed: () => context.go("/upload"), child: Text("Начать проверку"))
