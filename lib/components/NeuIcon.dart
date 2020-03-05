import 'package:flutter/material.dart';

import 'NeumorphicContainer.dart';

class NeuIcon extends StatelessWidget {

  final IconData icon;

  const NeuIcon({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicContainer(
                        borderRadius: 10,
                        blurOffset: Offset(1,1),
                        child: Icon(icon),
                        padding: 10
                        );
  }
}