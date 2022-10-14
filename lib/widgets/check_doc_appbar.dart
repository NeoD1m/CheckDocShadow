import 'package:flutter/material.dart';
/// TODO как хочешь делай аппбар, через встроенный appBar или через stack
class CheckDocAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CheckDocAppBar({super.key});


    @override
    Widget build(BuildContext context) {
        return AppBar(
            leading: Icon(Icons.add_chart_outlined,color: Colors.green,)
        );
    }

  @override
  Size get preferredSize => const Size.fromHeight(68);
}