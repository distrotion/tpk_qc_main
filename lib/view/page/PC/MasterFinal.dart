import 'package:flutter/material.dart';

// class MasterFinal extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             //Navigator.pop(context);
//           },
//           child: Text('Master Final'),
//         ),
//       ),
//     );
//   }
// }

class MasterFinal extends StatelessWidget {
  const MasterFinal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MasterFinal_B(),
    );
  }
}

class MasterFinal_B extends StatefulWidget {
  MasterFinal_B({Key? key}) : super(key: key);

  @override
  _MasterFinal_BState createState() => _MasterFinal_BState();
}

class _MasterFinal_BState extends State<MasterFinal_B> {
  int _selectedIndex = 0;

  final List<Widget> _children = [
    fn_type(),
    fn_unit(),
    fn_items(),
    fn_machinename(),
    fn_methode(),
    fn_specialspec(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('MASTER FINAL'),
          backgroundColor: const Color(0xFF190081),
        ),
        body: Center(
          child: _children.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'TYPE',
              backgroundColor: const Color(0xFF190081),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'UNIT',
              backgroundColor: const Color(0xFF190081),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'ITEMs',
              backgroundColor: const Color(0xFF190081),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'MACHINE NAME',
              backgroundColor: const Color(0xFF190081),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'METHOD',
              backgroundColor: const Color(0xFF190081),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'SPECIAL SPEC',
              backgroundColor: const Color(0xFF190081),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class fn_type extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Final type',
      ),
    );
  }
}

class fn_unit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Final unit',
      ),
    );
  }
}

class fn_items extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Final items',
      ),
    );
  }
}

class fn_machinename extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Final machinename',
      ),
    );
  }
}

class fn_methode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Final methode',
      ),
    );
  }
}

class fn_specialspec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Final specialspec',
      ),
    );
  }
}
