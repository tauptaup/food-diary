import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RicepItem extends StatelessWidget {
  RicepItem(this.title, this.title1, this.title11, this.title2, this.title22,
      this.title3, this.title33);

  final String title;
  final String title1;
  final String title11;
  final String title2;
  final String title22;
  final String title3;
  final String title33;

  Widget buildCirc() {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.yellow,
          radius: 5,
        ),
        SizedBox(width: 5),
        CircleAvatar(
          backgroundColor: Colors.yellow,
          radius: 5,
        ),
        SizedBox(width: 5),
        CircleAvatar(
          backgroundColor: Colors.yellow,
          radius: 5,
        ),
      ],
    );
  }

  Widget buildColumn(String title1, String title2, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          title1,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        Row(
          children: [
            Icon(FontAwesomeIcons.bowlFood,
                color: Theme.of(context).accentColor, size: 25),
            SizedBox(width: 25),
            buildCirc(),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              FontAwesomeIcons.fire,
              size: 15,
              color: Theme.of(context).accentColor,
            ),
            SizedBox(width: 5),
            Text(
              title2,
              style: TextStyle(
                color: Theme.of(context).accentColor,
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget buildTitle(String title, BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).accentColor,
      onTap: () {},
      child: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            Row(
              children: [
                Text('См. все', style: TextStyle(fontSize: 18)),
                SizedBox(width: 10),
                Icon(
                  FontAwesomeIcons.angleRight,
                  size: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 530,
      child: Column(
        children: [
          buildTitle(title, context),
          Container(
            height: 130,
            child: Row(
              children: [
                Container(
                  width: 110,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset('assets/images/zxc.jpg'),
                  ),
                ),
                SizedBox(width: 10),
                buildColumn(title1, title11, context),
              ],
            ),
          ),
          Divider(color: Colors.black),
          Container(
            height: 130,
            child: Row(
              children: [
                Container(
                  width: 110,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset('assets/images/zxc2.jpg'),
                  ),
                ),
                SizedBox(width: 10),
                buildColumn(title2, title22, context),
              ],
            ),
          ),
          Divider(color: Colors.black),
          Container(
            height: 130,
            child: Row(
              children: [
                Container(
                  width: 110,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset('assets/images/zxc3.jpg'),
                  ),
                ),
                SizedBox(width: 10),
                buildColumn(title3, title33, context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
