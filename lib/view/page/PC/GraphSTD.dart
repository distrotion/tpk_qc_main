import 'package:flutter/material.dart';

class GraphSTD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              //Navigator.pop(context);
            },
            child: Text('Graph STD'),
          ),
        ),
      ),
    );
  }
}
