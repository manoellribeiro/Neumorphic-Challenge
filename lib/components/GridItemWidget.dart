import 'package:flutter/material.dart';

import 'NeumorphicContainer.dart';

class GridItemWidget extends StatelessWidget {

  final String title;
  final IconData icon;

  const GridItemWidget({Key key, this.title, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicContainer(
            height: 160,
            width: 150,
            padding: 10,
            borderRadius: 15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                 Icon(icon, color: Colors.black, size: 30),
                  Padding(padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(title, style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                )
             ],
            ),
           blurOffset: Offset(5,5));
  }
}