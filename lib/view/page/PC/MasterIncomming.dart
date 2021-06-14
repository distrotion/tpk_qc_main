import 'package:flutter/material.dart';

class MasterIncomming extends StatefulWidget {
  MasterIncomming({Key? key}) : super(key: key);

  @override
  _MasterIncommingState createState() => _MasterIncommingState();
}

class _MasterIncommingState extends State<MasterIncomming> {
  int _selectedIndex = 0;

  final List<Widget> _children = [
    in_type(),
    in_unit(),
    in_items(),
    in_machinename(),
    in_methode(),
    in_specialspec(),
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
          title: const Text('MASTER INCOMMING'),
          backgroundColor: const Color(0xFF241164),
        ),
        body: Center(
          child: _children.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'TYPE',
              backgroundColor: const Color(0xFF241164),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'UNIT',
              backgroundColor: const Color(0xFF241164),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'ITEMs',
              backgroundColor: const Color(0xFF241164),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'MACHINE NAME',
              backgroundColor: const Color(0xFF241164),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'METHOD',
              backgroundColor: const Color(0xFF241164),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'SPECIAL SPEC',
              backgroundColor: const Color(0xFF241164),
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

class in_type extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Incomming type',
      ),
    );
  }
}

class in_unit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Incomming unit',
      ),
    );
  }
}

class in_items extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Incomming items',
      ),
    );
  }
}

class in_machinename extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Incomming machinename',
      ),
    );
  }
}

class in_methode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Incomming methode',
      ),
    );
  }
}

class in_specialspec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Incomming specialspec',
      ),
    );
  }
}
