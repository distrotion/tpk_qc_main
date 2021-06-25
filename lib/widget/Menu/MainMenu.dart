import 'package:flutter/material.dart';
import 'package:tpk_qc_main/view/page/PC/MATCPlist.dart';
import 'package:tpk_qc_main/layouts/MainStructure.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    print("menupopup");
    return Column(
      children: [
        inspectionmaster(),
        incomminginspectionmaster(),
        finalinspectionmaster(),
        Divider(
          color: Color(0x4dffffff),
          height: 12,
        ),
        matcplist(),
        graphlist(),
        graphstd(),
        judement(),
        report()
      ],
    );
  }

  Widget inspectionmaster() {
    return ListTile(
      onTap: () {},
      leading: Icon(
        Icons.dvr,
        color: Colors.white,
        size: 30.0,
      ),
      title: Text(
        "Inspection Master",
        style: TextStyle(
          fontFamily: 'Mitr',
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          letterSpacing: 0,
        ),
      ),
      onLongPress: () {},
      horizontalTitleGap: 2,
    );
  }

  Widget incomminginspectionmaster() {
    return ListTile(
      onTap: () {},
      // leading: Icon(
      //   Icons.account_circle_outlined,
      //   color: Colors.white,
      //   size: 30.0,
      // ),
      title: Text(
        "Incomming",
        style: TextStyle(
          fontFamily: 'Mitr',
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          letterSpacing: 0,
        ),
      ),
      onLongPress: () {
        Navigator.pushNamed(context, routeMasterincomming);
      },
      horizontalTitleGap: 2,
    );
  }

  Widget finalinspectionmaster() {
    return ListTile(
      onTap: () {},
      // leading: Icon(
      //   Icons.account_circle_outlined,
      //   color: Colors.white,
      //   size: 30.0,
      // ),
      title: Text(
        "Final",
        style: TextStyle(
          fontFamily: 'Mitr',
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          letterSpacing: 0,
        ),
      ),
      onLongPress: () {
        Navigator.pushNamed(context, routeMasterFinal);
      },
      horizontalTitleGap: 2,
    );
  }

  Widget matcplist() {
    return ListTile(
      onTap: () {},
      leading: Icon(
        Icons.dvr,
        color: Colors.white,
        size: 30.0,
      ),
      title: Text(
        "MATCP list",
        style: TextStyle(
          fontFamily: 'Mitr',
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          letterSpacing: 0,
        ),
      ),
      onLongPress: () {
        Navigator.pushNamed(context, routeMATCPlist);
      },
      horizontalTitleGap: 2,
    );
  }

  Widget graphlist() {
    return ListTile(
      onTap: () {},
      leading: Icon(
        Icons.dvr,
        color: Colors.white,
        size: 30.0,
      ),
      title: Text(
        "Graph list",
        style: TextStyle(
          fontFamily: 'Mitr',
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          letterSpacing: 0,
        ),
      ),
      onLongPress: () {
        Navigator.pushNamed(context, routeGraphList);
      },
      horizontalTitleGap: 2,
    );
  }

  Widget graphstd() {
    return ListTile(
      onTap: () {},
      leading: Icon(
        Icons.dvr,
        color: Colors.white,
        size: 30.0,
      ),
      title: Text(
        "Graph STD",
        style: TextStyle(
          fontFamily: 'Mitr',
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          letterSpacing: 0,
        ),
      ),
      onLongPress: () {
        Navigator.pushNamed(context, routeGraphSTD);
      },
      horizontalTitleGap: 2,
    );
  }

  Widget judement() {
    return ListTile(
      onTap: () {},
      leading: Icon(
        Icons.dvr,
        color: Colors.white,
        size: 30.0,
      ),
      title: Text(
        "Judement",
        style: TextStyle(
          fontFamily: 'Mitr',
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          letterSpacing: 0,
        ),
      ),
      onLongPress: () {
        Navigator.pushNamed(context, routeJudement);
      },
      horizontalTitleGap: 2,
    );
  }

  Widget report() {
    return ListTile(
      onTap: () {},
      leading: Icon(
        Icons.dvr,
        color: Colors.white,
        size: 30.0,
      ),
      title: Text(
        "Report",
        style: TextStyle(
          fontFamily: 'Mitr',
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          letterSpacing: 0,
        ),
      ),
      onLongPress: () {
        Navigator.pushNamed(context, routeReport);
      },
      horizontalTitleGap: 2,
    );
  }
}


// import 'package:tpk_qc_main/view/page/testpage1.dart';
// import 'package:tpk_qc_main/view/page/testpage2.dart';
//import 'MenuItem.dart';

//ignore: use_key_in_widget_constructors, must_be_immutable
// class MainMenu extends StatelessWidget {
//   final List<Map<String, String>> title = [
//     {
//       "text": "Inspection Master",
//       "icon": 'Icons.account_box_outlined',
//       "action": "1"
//     },
//     {
//       "text": "Inspection\nStandard",
//       "icon": 'Icons.asaccount_tree_outlined',
//       "action": "2"
//     },
//     {
//       "text": "Graph List",
//       "icon": 'Icons.align_horizontal_left_sharp',
//       "action": "3"
//     },
//     {"text": "Report", "icon": 'Icons.all_inbox_outlined ', "action": "4"}
//   ];

//   //final List<Map<String, String>> titles;

//   //MainMenu(this.titles);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xFF0b1327),
//       width: 220,
//       child: Column(children: <Widget>[
//         for (var item in title) MenuItem(item),
//       ]),
//     );
//   }
// }
