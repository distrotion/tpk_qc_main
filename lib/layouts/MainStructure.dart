import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tpk_qc_main/view/page/PC/Home.dart';
import 'package:tpk_qc_main/view/page/PC/MATCPlist.dart';
import 'package:tpk_qc_main/widget/Menu/MainMenu.dart';
import 'package:tpk_qc_main/widget/AppBar/App_Bar.dart';
import 'package:tpk_qc_main/widget/popbar/mdtest.dart';

const routeHome = '/';
const routeLogin = '/login';
const routeMasterincomming = '/MasterIncomming';
const routeMasterFinal = '/MasterFinal';
const routeMATCPlist = '/MATCPlist';
const routeGraphList = '/GraphList';
const routeGraphSTD = '/GraphSTD';
const routeJudement = '/Judement';
const routeReport = '/Report';

class MainStructure extends StatelessWidget {
  final Widget page;
  const MainStructure(this.page);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // //title: Text('QC TPK BP12'),
          // centerTitle: false,
          backgroundColor: const Color(0xFF0b1327),
          actions: <Widget>[
            SizedBox(
              width: 50,
            ),
            App_Bar()
          ],
        ),
        drawer: Container(
          width: 200,
          child: Drawer(
            child: Left(),
          ),
        ),
        body: ScreenTypeLayout(
          desktop: Row(children: <Widget>[Left(), PC_Center(page)]),
          tablet: Row(children: <Widget>[PC_Center(page)]),
          mobile: Row(children: <Widget>[PC_Center(page)]),

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
      //height: (MediaQuery.of(context).size.height - 70),
      width: 200,
      color: Color(0xff0b1327),
      child: ListView(
        children: [MainMenu()],
      ),
    );
  }
}

@immutable
class PC_Center extends StatelessWidget {
  final Widget page;
  const PC_Center(this.page);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Scaffold(
          body: MaterialApp(
            debugShowCheckedModeBanner: false,

            title: 'Thaiparker QC',
            theme: ThemeData(
                primarySwatch: Colors.blue,
                textTheme: Theme.of(context).textTheme.apply(
                      fontFamily: 'Mitr',
                    )),
            //color: Colors.red,
            home: page,
            //initialRoute: '/',
            // routes: {
            //   routeHome: (context) => page,
            //   //routeMATCPlist: (context) => page,
            //   //'/MATCPlist': (context) => MATCPlist(),
            // },
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
      width: 312,
      //height: (MediaQuery.of(context).size.height),
      child: Padding(
          padding: EdgeInsets.only(left: 1, right: 1, top: 0, bottom: 30),
          child: ListView(children: <Widget>[
            //SomeSmlimBox(input),
            Mainmenu_Right()
          ])),
    );
  }
}
