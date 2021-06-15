import 'package:flutter/material.dart';

class Mainmenu_Right extends StatefulWidget {
  Mainmenu_Right({Key? key}) : super(key: key);

  @override
  _Mainmenu_RightState createState() => _Mainmenu_RightState();
}

class _Mainmenu_RightState extends State<Mainmenu_Right> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height),
      width: 340,
      color: Color(0xff0b1327),
      child: Column(
        children: [List_Appoint()],
      ),
    );
  }
}

class List_Appoint extends StatefulWidget {
  @override
  _List_AppointState createState() => _List_AppointState();
}

class _List_AppointState extends State<List_Appoint> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff0b1327),
      height: (MediaQuery.of(context).size.height),
      width: (MediaQuery.of(context).size.width + 1),
      child: ListView(
        children: [
          Text_Appoint(),
          Data_test(),
          Data_test2(),
          Data_test2(),
          Data_test(),
          Data_test(),
          Data_test(),
        ],
      ),
    );
  }
}

class Text_Appoint extends StatelessWidget {
  const Text_Appoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 25, 0, 10),
      child: Container(
        //color: Colors.blue,
        height: 24,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "New Appointment",
            style: TextStyle(
              //fontFamily: 'Mitr',
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ),
    );
  }
}

class Data_test extends StatelessWidget {
  const Data_test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 168,
        width: 278,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 12,
              ),
              Container(
                height: 95,
                child: Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      width: 56,
                      height: 100,
                      color: Colors.red,
                      //alignment: AlignmentDirectional.topCenter,
                      child: Stack(
                        children: [
                          Container(
                            child: Container(
                              height: 56,
                              child: Logo(),
                            ),
                            //child: Logo(),
                          ),
                          Center(
                            child: Container(
                              height: 36,
                              width: 36,
                              child: Logo2(),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      width: 190,
                      height: 100,
                      color: Colors.green,
                      child: Column(
                        children: [
                          Container(
                            alignment: AlignmentDirectional.centerStart,
                            height: 30,
                            //color: Colors.yellow,
                            child: Text(
                              'Mr.Parin kuy',
                              style: TextStyle(
                                fontFamily: 'Mitr',
                                color: Color(0xdd000000),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                letterSpacing: 0,
                              ),
                            ),
                          ),
                          Container(
                            alignment: AlignmentDirectional.centerStart,
                            height: 60,
                            //color: Colors.yellow,
                            child: Text(
                              'Clinic\nDr.Tong Hongthong\n6 june 21|12.00-12.30',
                              style: TextStyle(
                                fontFamily: 'Mitr',
                                color: Color(0xdd000000),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                letterSpacing: 0,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                //color: Colors.teal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Button_reject(),
                    Button_Accept(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Data_test2 extends StatelessWidget {
  const Data_test2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 168,
        width: 278,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 12,
              ),
              Container(
                height: 95,
                child: Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      width: 56,
                      height: 100,
                      //color: Colors.red,
                      //alignment: AlignmentDirectional.topCenter,
                      child: Stack(
                        children: [
                          Container(
                            child: Container(
                              height: 56,
                              child: Logo(),
                            ),
                            //child: Logo(),
                          ),
                          // Center(
                          //   child: Container(
                          //     height: 36,
                          //     width: 36,
                          //     child: Logo2(),
                          //   ),
                          // )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      width: 190,
                      height: 100,
                      //color: Colors.green,
                      child: Column(
                        children: [
                          Container(
                            alignment: AlignmentDirectional.centerStart,
                            height: 30,
                            //color: Colors.yellow,
                            child: Text(
                              'Mr.Parin kuy',
                              style: TextStyle(
                                fontFamily: 'Mitr',
                                color: Color(0xdd000000),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                letterSpacing: 0,
                              ),
                            ),
                          ),
                          Container(
                            alignment: AlignmentDirectional.centerStart,
                            height: 60,
                            //color: Colors.yellow,
                            child: Text(
                              'Clinic\nDr.Tong Hongthong\n6 june 21|12.00-12.30',
                              style: TextStyle(
                                fontFamily: 'Mitr',
                                color: Color(0xdd000000),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                letterSpacing: 0,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                //color: Colors.teal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Button_reject(),
                    Button_Accept(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 56,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/parin.jpg"),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
    );
  }
}

class Logo2 extends StatelessWidget {
  const Logo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 56,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/p1.jpg"),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
    );
  }
}

class Button_reject extends StatefulWidget {
  Button_reject({Key? key}) : super(key: key);

  @override
  _Button_rejectState createState() => _Button_rejectState();
}

class _Button_rejectState extends State<Button_reject> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        height: 30,
        width: 120,
        child: FloatingActionButton.extended(
          label: Text(
            "REJECT",
            style: TextStyle(
              fontFamily: 'Mitr',
              color: Color(0xdd000000),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              letterSpacing: 0,
            ),
          ),
          onPressed: () {/* ... */},
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}

class Button_Accept extends StatefulWidget {
  Button_Accept({Key? key}) : super(key: key);

  @override
  _Button_AcceptState createState() => _Button_AcceptState();
}

class _Button_AcceptState extends State<Button_Accept> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        height: 30,
        width: 120,
        child: FloatingActionButton.extended(
          label: Text(
            "ACCEPT",
            style: TextStyle(
              fontFamily: 'Mitr',
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              letterSpacing: 0,
            ),
          ),
          onPressed: () {},
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
