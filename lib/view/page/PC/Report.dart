import 'package:flutter/material.dart';

class Report extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            //Navigator.pop(context);
          },
          child: Text('Report'),
        ),
      ),
    );
  }
}
