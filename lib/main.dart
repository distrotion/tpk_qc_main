import 'package:flutter/material.dart';
import 'package:tpk_qc_main/layouts/MainStructure.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    ScreenBreakpoints(desktop: 950, tablet: 750, watch: 300),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MindFit Clinic',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: Theme.of(context).textTheme.apply(
                fontFamily: 'Mitr',
              )),
      home: MainStructure(),
      debugShowCheckedModeBanner: false,
    );
  }
}
