import 'package:flutter/material.dart';

class Mainmenu_center extends StatefulWidget {
  Mainmenu_center({Key? key}) : super(key: key);

  @override
  _Mainmenu_centerState createState() => _Mainmenu_centerState();
}

class _Mainmenu_centerState extends State<Mainmenu_center> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height - 70),
      //width: 878,
      color: Color(0xff0b1327),
      child: Column(
        children: [
          Container(
              //width: 878,
              height: (MediaQuery.of(context).size.height - 70),
              decoration: BoxDecoration(
                color: Colors.white,
                //color: Colors.green.shade200,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Clinic_SpaceZone()),
        ],
      ),
    );
  }
}

class Clinic_SpaceZone extends StatefulWidget {
  Clinic_SpaceZone({Key? key}) : super(key: key);

  @override
  _Clinic_SpaceZoneState createState() => _Clinic_SpaceZoneState();
}

class _Clinic_SpaceZoneState extends State<Clinic_SpaceZone> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 20, 24, 0),
          child: Container(
            //color: Colors.purpleAccent,
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    //color: Colors.blue.shade300,
                    color: Colors.white,
                    height: 30,
                    child: Text(
                      "Clinic",
                      style: TextStyle(
                        fontFamily: 'Mitr',
                        color: Color(0xdd000000),
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 36),
                  child: Container(
                    //color: Colors.blue.shade300,
                    color: Colors.white,
                    //height: 24,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Boxsearch(),
                        BoxButton(),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(minHeight: 279),
                      child: Container(
                        //color: Colors.pink,
                        color: Colors.white,

                        //TODO กล่องหกกล่อง
                        child: Box_status(),
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 36),
                  child: Upcomming_menu(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Boxsearch extends StatefulWidget {
  Boxsearch({Key? key}) : super(key: key);

  @override
  _BoxsearchState createState() => _BoxsearchState();
}

class _BoxsearchState extends State<Boxsearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blue,
      //margin: EdgeInsets.only(left: 12, right: 44, top: 8, bottom: 8),
      width: 342,
      height: 45,
      child: TextFormField(
        initialValue: "",
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(8),
          hintText: 'Search',
          hintStyle: TextStyle(
            fontFamily: 'Mitr',
            color: Color(0xdd000000),
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            letterSpacing: 0,
          ),
          border: OutlineInputBorder(),
          suffixIcon: Icon(
            Icons.search,
          ),
        ),
      ),
    );
  }
}

class BoxButton extends StatefulWidget {
  BoxButton({Key? key}) : super(key: key);

  @override
  _BoxButtonState createState() => _BoxButtonState();
}

class _BoxButtonState extends State<BoxButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: FloatingActionButton.extended(
        label: Text(
          "ADD PATIENT",
          style: TextStyle(
            fontFamily: 'Mitr',
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            letterSpacing: 0,
          ),
        ),
        onPressed: () {/* ... */},
        backgroundColor: Colors.black,
      ),
    );
  }
}

class Box_upcoming extends StatefulWidget {
  Box_upcoming({Key? key}) : super(key: key);

  @override
  _Box_upcomingState createState() => _Box_upcomingState();
}

class _Box_upcomingState extends State<Box_upcoming> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}

class Upcomming_menu extends StatefulWidget {
  Upcomming_menu({Key? key}) : super(key: key);

  @override
  _Upcomming_menuState createState() => _Upcomming_menuState();
}

String dropdownValue = 'ALL';

class _Upcomming_menuState extends State<Upcomming_menu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blue.shade300,
      color: Colors.white,
      height: 36,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Upcoming",
            style: TextStyle(
              fontFamily: 'Mitr',
              color: Color(0xdd000000),
              fontSize: 20,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              letterSpacing: 0,
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 36,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black,
                width: 1.0,
              ),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                // disabledHint: null,
                // isDense: false,

                value: dropdownValue,
                icon: Image.asset("assets/icons/icon-filter.png"),
                iconSize: 30,
                //elevation: 16,
                //style: const TextStyle(color: Colors.deepPurple),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },

                items: <String>['ALL', 'Confirmer', 'Canceled', 'Pospone']
                    .map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(
                          fontFamily: 'Mitr',
                          color: Color(0xdd000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 0,
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}

//**ข้อมูลกล่องในboxstatus*/

// class Box_status extends StatefulWidget {
//   Box_status({Key? key}) : super(key: key);

//   @override
//   _Box_statusState createState() => _Box_statusState();
// }

// class _Box_statusState extends State<Box_status> {
//   @override
//   Widget build(BuildContext context) {
//     return Wrap(
//       children: [
// Container(
//   height: 128,
//   width: 260,
//   decoration: BoxDecoration(
//       image: DecorationImage(
//           image: AssetImage('assets/images/icon-edit-copy-10.png'))),
// ),
// Container(
//   height: 128,
//   width: 260,
//   decoration: BoxDecoration(
//       image: DecorationImage(
//           image: AssetImage('assets/images/icon-edit-copy-5.png'))),
// ),
// Container(
//   height: 128,
//   width: 260,
//   decoration: BoxDecoration(
//       image: DecorationImage(
//           image: AssetImage('assets/images/icon-edit-copy-7.png'))),
// ),
// Container(
//   height: 128,
//   width: 260,
//   decoration: BoxDecoration(
//       image: DecorationImage(
//           image: AssetImage('assets/images/icon-edit-copy-8.png'))),
// ),
// Container(
//   height: 128,
//   width: 260,
//   decoration: BoxDecoration(
//       image: DecorationImage(
//           image: AssetImage('assets/images/icon-edit-copy-9.png'))),
// ),
// Container(
//   height: 128,
//   width: 260,
//   decoration: BoxDecoration(
//       image: DecorationImage(
//           image: AssetImage('assets/images/icon-edit-copy-6.png'))),
// ),
//       ],
//     );
//   }
// }

class Box_status extends StatefulWidget {
  Box_status({Key? key}) : super(key: key);

  @override
  _Box_statusState createState() => _Box_statusState();
}

class _Box_statusState extends State<Box_status> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      //height: 500,
      // child: Expanded(
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.pink,
              // child: Padding(
              //   padding:
              //       EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, //Axis-Y
                crossAxisAlignment: CrossAxisAlignment.center, //Axis-X
                children: [fixbox11(), fixbox12(), fixbox13()],
              ),
            ),
            // ),
            Container(
              color: Colors.pink,
              // child: Padding(
              //   padding:
              //       EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, //Axis-Y
                crossAxisAlignment: CrossAxisAlignment.center, //Axis-X
                children: [fixbox21(), fixbox22(), fixbox23()],
              ),
            ),
          ],
        ),
      ),

      // )
    );
  }
}

class fixbox11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: dashtop01(),
      ),
    );
  }
}

class fixbox12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: dashtop02(),
      ),
    );
  }
}

class fixbox13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: dashtop03(),
      ),
    );
  }
}

class dashtop01 extends StatefulWidget {
  @override
  _dashtop01State createState() => _dashtop01State();
}

class _dashtop01State extends State<dashtop01> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128,
      width: 260,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/icon-edit-copy-7.png'))),
    );
  }
}

class dashtop02 extends StatefulWidget {
  dashtop02({Key? key}) : super(key: key);

  @override
  _dashtop02State createState() => _dashtop02State();
}

class _dashtop02State extends State<dashtop02> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128,
      width: 260,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/icon-edit-copy-8.png'))),
    );
  }
}

class dashtop03 extends StatefulWidget {
  dashtop03({Key? key}) : super(key: key);

  @override
  _dashtop03State createState() => _dashtop03State();
}

class _dashtop03State extends State<dashtop03> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 128,
        width: 260,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/icon-edit-copy-9.png'))),
      ),
    );
  }
}

class fixbox21 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: dashbot01(),
      ),
    );
  }
}

class fixbox22 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: dashbot02(),
      ),
    );
  }
}

class fixbox23 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: dashbot03(),
      ),
    );
  }
}

class dashbot01 extends StatefulWidget {
  dashbot01({Key? key}) : super(key: key);

  @override
  _dashbot01State createState() => _dashbot01State();
}

class _dashbot01State extends State<dashbot01> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 128,
        width: 260,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/icon-edit-copy-8.png'))),
      ),
    );
  }
}

class dashbot02 extends StatefulWidget {
  dashbot02({Key? key}) : super(key: key);

  @override
  _dashbot02State createState() => _dashbot02State();
}

class _dashbot02State extends State<dashbot02> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 128,
        width: 260,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/icon-edit-copy-9.png'))),
      ),
    );
  }
}

class dashbot03 extends StatefulWidget {
  dashbot03({Key? key}) : super(key: key);

  @override
  _dashbot03State createState() => _dashbot03State();
}

class _dashbot03State extends State<dashbot03> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 128,
        width: 260,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/icon-edit-copy-6.png'))),
      ),
    );
  }
}
