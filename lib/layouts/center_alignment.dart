import 'package:flutter/material.dart';

class CenterAlignment extends StatelessWidget {
  //final Widget child;
  // ignore: use_key_in_widget_constructors
  //const CenterAlignment();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF60c99e),
      padding: const EdgeInsets.all(16),
      alignment: Alignment.center, //Text Only
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, //Axis-Y
        crossAxisAlignment: CrossAxisAlignment.center, //Axis-X
        //children: [child],
      ),
    );
  }
}
