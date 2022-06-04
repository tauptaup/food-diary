import 'package:flutter/material.dart';

class CirceAva extends StatelessWidget {
  CirceAva(this.radius);

  final double radius;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      CircleAvatar(radius: radius, backgroundColor: Colors.yellow),
      SizedBox(width: 4),
      CircleAvatar(radius: radius, backgroundColor: Colors.green),
      SizedBox(width: 4),
      CircleAvatar(radius: radius, backgroundColor: Colors.yellow),
      SizedBox(width: 4),
    ]);
  }
}
