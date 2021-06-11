import 'package:flutter/material.dart';

class MenuDetail extends StatelessWidget {
  final titleS2;
  const MenuDetail(this.titleS2);

  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new Material(
      color: Colors.transparent,
      child: new InkWell(
          onTap: () {
            print("tapped");
          },
          child: new Container(
            height: 50,
            width: 250,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  color: const Color(0xFF2b3858),
                  height: 64,
                  width: 64,
                  // child: Icon(
                  //   Icons.ac_unit,
                  //   //color: Colors.pink,
                  //   size: 24.0,
                  //   semanticLabel: 'Text to announce in accessibility modes',
                  // ),

                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //     image: AssetImage(title['icon']),
                  //     fit: BoxFit.fill,
                  //   ),
                  //   shape: BoxShape.circle,
                  // )
                ),
                const SizedBox(width: 15),
                Text(
                  titleS2['text'],
                  style: TextStyle(color: Colors.white, fontSize: 12.0),
                ),
                // TextButton(
                //   child: Text(
                //     titleS2['text'],
                //     style: TextStyle(color: Colors.white, fontSize: 15.0),
                //   ),
                //   onPressed: () {/* ... */},
                // ),
              ],
            ),
          )),
    ));
  }
}
