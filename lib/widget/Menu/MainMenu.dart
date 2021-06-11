import 'package:flutter/material.dart';
import 'MenuItem.dart';

//ignore: use_key_in_widget_constructors, must_be_immutable
class MainMenu extends StatelessWidget {
  final List<Map<String, String>> title = [
    {
      "text": "Inspection Master",
      "icon": 'Icons.account_box_outlined',
      "action": "1"
    },
    {
      "text": "Inspection\nStandard",
      "icon": 'Icons.asaccount_tree_outlined',
      "action": "2"
    },
    {
      "text": "Graph List",
      "icon": 'Icons.align_horizontal_left_sharp',
      "action": "3"
    },
    {"text": "Report", "icon": 'Icons.all_inbox_outlined ', "action": "4"}
  ];

  //final List<Map<String, String>> titles;

  //MainMenu(this.titles);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF0b1327),
      width: 220,
      child: Column(children: <Widget>[
        for (var item in title) MenuItem(item),
      ]),
    );
  }
}
