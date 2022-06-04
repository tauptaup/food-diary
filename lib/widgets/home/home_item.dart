import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qwe1/widgets/home/home_tab.dart';

class HomeItem extends StatelessWidget {
  HomeItem(this.title1, this.title2, this.title3);

  final String title1;
  final String title2;
  final String title3;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).accentColor,
      onTap: () => Navigator.of(context).pushNamed(HomeTab.routeName),
      child: Container(
        height: 320,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title1,
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
                Text(title2,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black45,
                        fontWeight: FontWeight.w500)),
              ],
            ),
            Container(
              height: 90,
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(width: 8),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: 100,
                    child: Image.asset('assets/images/qwe1.jpg',
                        fit: BoxFit.cover),
                  ),
                ),
                itemCount: 7,
              ),
            ),
            Text(title3, style: TextStyle(color: Colors.black26)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(radius: 7, backgroundColor: Colors.yellow),
                    SizedBox(width: 4),
                    CircleAvatar(radius: 7, backgroundColor: Colors.green),
                    SizedBox(width: 4),
                    CircleAvatar(radius: 7, backgroundColor: Colors.yellow),
                    SizedBox(width: 4),
                  ],
                ),
                Icon(FontAwesomeIcons.bowlFood,
                    size: 35, color: Theme.of(context).accentColor),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
