import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tpk_qc_main/widget/Menu/MainMenu.dart';

class MainStructure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('QC TPK BP12'),
            centerTitle: false,
            backgroundColor: const Color(0xFF0b1327)),
        body: ScreenTypeLayout(
          desktop: Row(children: <Widget>[Left(), Center(), Right()]),
          tablet: Row(children: <Widget>[Left(), Center(), Right()]),
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
        color: Colors.blue,
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
      color: Colors.green,
      width: 300,
      child: Padding(
          padding: EdgeInsets.only(left: 1, right: 1, top: 0, bottom: 30),
          child: ListView(children: <Widget>[
            //SomeSmlimBox(input),
          ])),
    );
  }
}
