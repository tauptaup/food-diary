import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlanWeekItem extends StatelessWidget {
  const PlanWeekItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).accentColor,
      onTap: () {},
      child: Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'План питания на неделю',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Icon(
              FontAwesomeIcons.angleRight,
              size: 22,
              color: Color(0xFF2d2d2d),
            ),
          ],
        ),
      ),
    );
  }
}
