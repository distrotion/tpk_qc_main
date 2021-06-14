import 'package:flutter/material.dart';
import 'package:tpk_qc_main/layouts/MainStructure.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tpk_qc_main/view/page/GraphList.dart';
import 'package:tpk_qc_main/view/page/GraphSTD.dart';
import 'package:tpk_qc_main/view/page/Home.dart';
import 'package:tpk_qc_main/view/page/Judement.dart';
import 'package:tpk_qc_main/view/page/Login.dart';
import 'package:tpk_qc_main/view/page/MATCPlist.dart';
import 'package:tpk_qc_main/view/page/MasterFinal.dart';
import 'package:tpk_qc_main/view/page/MasterIncomming.dart';
import 'package:tpk_qc_main/view/page/Report.dart';
import 'package:tpk_qc_main/widget/AppBar/App_Bar.dart';

void main() {
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    ScreenBreakpoints(desktop: 950, tablet: 800, watch: 300),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);
  //late Widget page;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Thaiparker QC',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: Theme.of(context).textTheme.apply(
                fontFamily: 'Mitr',
              )),
      debugShowCheckedModeBanner: false,
      //home: MainStructure(),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        late Widget page;
        if (settings.name == routeHome) {
          page = MainStructure(Home());
        } else if (settings.name == routeMATCPlist) {
          page = MainStructure(MATCPlist());
        } else if (settings.name == routeGraphList) {
          page = MainStructure(GraphList());
        } else if (settings.name == routeGraphSTD) {
          page = MainStructure(GraphSTD());
        } else if (settings.name == routeJudement) {
          page = MainStructure(Judement());
        } else if (settings.name == routeReport) {
          page = MainStructure(Report());
        } else if (settings.name == routeMasterincomming) {
          page = MainStructure(MasterIncomming());
        } else if (settings.name == routeMasterFinal) {
          page = MainStructure(MasterFinal());
        } else if (settings.name == routeLogin) {
          page = Login();
        } else {
          throw Exception('Unknown route: ${settings.name}');
        }

        return MaterialPageRoute<dynamic>(
          builder: (context) {
            return page;
          },
          settings: settings,
        );
      },
    );
  }
}
