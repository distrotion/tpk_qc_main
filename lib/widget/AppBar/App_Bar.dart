import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tpk_qc_main/view/page/Login.dart';

class App_Bar extends StatefulWidget {
  App_Bar({Key? key}) : super(key: key);

  @override
  _App_BarState createState() => _App_BarState();
}

class _App_BarState extends State<App_Bar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      color: Color(0xff0b1327),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Logo2(),
              Logo1(),
            ],
          ),
          Pack_topright_bar(),
        ],
      ),
    );
  }

  ///###################################################################################

}

class Logo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: Container(
        height: 30,
        width: 30,
        color: Colors.red,
        // decoration: BoxDecoration(
        //   //color: Colors.white,
        //   image: DecorationImage(
        //     image: AssetImage("assets/images/logo1.png"),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        //color: Colors.white,
      ),
    );
  }
}

//============================================================
class Logo1 extends StatelessWidget {
  const Logo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        color: Color(0xff0b1327),
        child: Text(
          "Thaiparker QC BP12",
          style: TextStyle(
            //fontFamily: 'Mitr',
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            letterSpacing: 0,
          ),
        ),
      ),
    );
  }
}

class Pack_topright_bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
          width: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Time_(), profile(), logout()],
          )),
    );
  }
}

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //child: Image.asset("assets/icons/icon-notifications.png"),
      child: Icon(Icons.account_circle_outlined),
      width: 24,
      height: 24,
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

class logout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Login()),
        );
      },
      child: Container(
        width: 24,
        height: 24,
        child: Icon(Icons.logout),

        // decoration: new BoxDecoration(
        //     borderRadius: BorderRadius.circular(8),
        //     color: Colors.brown.shade300)
      ),
    );
  }
}

class Time_ extends StatefulWidget {
  Time_({Key? key}) : super(key: key);

  @override
  _Time_State createState() => _Time_State();
}

class _Time_State extends State<Time_> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(seconds: 1)),
      builder: (context, snapshot) {
        return Center(
          child: Text(
            DateFormat('hh:mm a').format(DateTime.now()),
            style: TextStyle(
              fontFamily: 'Mitr',
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
            ),
          ),
        );
      },
    );
  }
}
