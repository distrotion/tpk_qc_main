import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tpk_qc_main/widget/Menu/MainMenu.dart';
import 'package:tpk_qc_main/widget/AppBar/App_Bar.dart';

class MainStructure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('QC TPK BP12'),
          centerTitle: false,
          backgroundColor: const Color(0xFF0b1327),
          actions: <Widget>[App_Bar()],
        ),
        body: ScreenTypeLayout(
          desktop:
              // Column(
              //   children: [
              //     App_Bar(),
              Row(children: <Widget>[Left(), Center()]),
          //   ],
          // ),
          tablet: Row(children: <Widget>[Left(), Center()]),
          mobile: Row(children: <Widget>[Left(), Center()]),
          //watch: Row(children: <Widget>[Left(), Center()]),

          // desktop: Container(
          //   color: Colors.red,
          // ),
          // tablet: Container(
          //   color: Colors.blue,
          // ),
          // mobile: Container(
          //   color: Colors.green,
          // ),
          // watch: Container(
          //   color: Colors.yellow,
          // ),
        ));
  }
}

class Left extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: 250,
        color: Color(0xff0b1327),
        child: MainMenu(),
      ),
    );
  }
}

class Center extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Scaffold(
          body: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

class Right extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF0b1327),
      width: 300,
      child: Padding(
          padding: EdgeInsets.only(left: 1, right: 1, top: 0, bottom: 30),
          child: ListView(children: <Widget>[
            //SomeSmlimBox(input),
          ])),
    );
  }
}
