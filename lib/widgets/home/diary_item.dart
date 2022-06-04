import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:qwe1/widgets/home/diar_screen.dart';

class DiaryItem extends StatelessWidget {
  DiaryItem(this.mainTitle, this.height);

  final String mainTitle;
  final double height;

  Widget buildIndi(String title1, String title2, Color color, double gram) {
    return CircularPercentIndicator(
      radius: 25.0,
      lineWidth: 3.0,
      percent: gram,
      center: Text(title1, style: TextStyle(fontSize: 10, color: Colors.grey)),
      progressColor: color,
      footer: Text(
        title2,
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).accentColor,
      onTap: () {},
      child: Container(
        height: height,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  mainTitle,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  FontAwesomeIcons.angleRight,
                  size: 22,
                  color: Color(0xFF2d2d2d),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildIndi('91 ккал', 'Калории', Colors.green, 0.30),
                buildIndi('32 г', 'белки', Colors.yellow, 0.40),
                buildIndi('40 г', 'жиры', Colors.blue, 0.70),
                buildIndi('100 г', 'углеводы', Colors.purple, 0.50),
              ],
            )
          ],
        ),
      ),
    );
  }
}
