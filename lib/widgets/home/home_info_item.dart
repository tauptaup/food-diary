import 'package:flutter/material.dart';

class HomeInfoItem extends StatelessWidget {
  HomeInfoItem(this.title1, this.title2, this.color, this.height);

  final String title1;
  final String title2;
  final Color color;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title1,
              style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
          Text(title2,
              style: TextStyle(
                  color: Colors.white54,
                  fontSize: 18,
                  fontWeight: FontWeight.w500)),
          Container(
            width: double.infinity,
            child: FlatButton(
              textColor: Colors.white,
              onPressed: () {},
              child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text('ПЕРЕЙТИ',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold))),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              color: Colors.white24,
            ),
          ),
        ],
      ),
    );
  }
}
