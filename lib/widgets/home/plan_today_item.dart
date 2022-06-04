import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qwe1/widgets/home/home_tab.dart';
import 'package:qwe1/widgets/home/tab_home.dart';

class PlanTodayItem extends StatelessWidget {
  const PlanTodayItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).accentColor,
      onTap: () => Navigator.of(context).pushNamed(HomeTab.routeName),
      child: Container(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'План питания на сегодня',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Icon(
                  FontAwesomeIcons.angleRight,
                  size: 22,
                  color: Color(0xFF2d2d2d),
                ),
              ],
            ),
            Text(
              'Индивидуальная схема питания, основанная на ваших личных целях и потребностях организма',
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
