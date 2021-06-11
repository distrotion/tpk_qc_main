import 'package:flutter/material.dart';
import 'MenuDetail.dart';

// ignore: use_key_in_widget_constructors
class MenuItem extends StatelessWidget {
  final Map<String, String> titleS1;
  const MenuItem(this.titleS1);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
      child: Container(
        width: 250,
        height: 50,
        child: MenuDetail(titleS1),
      ),
      /*child: Container(
          color: const Color(0xFF2b3858),
          height: 48,
        )*/
    );
  }
}
