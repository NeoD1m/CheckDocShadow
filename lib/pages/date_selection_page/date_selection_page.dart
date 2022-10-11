import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DateSelectionPage extends StatelessWidget{
    const DateSelectionPage({Key? key}) : super(key: key);
    @override
    Widget build(BuildContext context) {
        return Scaffold(
          body: Container(
            color: Colors.red,
            child: ElevatedButton(onPressed: () => context.go("/result"), child: Text("Получить результат"),),
          ),
        );
    }
}