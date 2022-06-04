import 'package:flutter/material.dart';

class RicepBlock extends StatelessWidget {
  const RicepBlock({Key? key}) : super(key: key);

  Widget buildContainer(String title, String image, double width) {
    return Container(
      height: 110,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.modulate,
            ),
            Positioned(
              left: 15,
              top: 15,
              child: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildContainer('Салаты', 'assets/images/salat.jpg', 150),
              buildContainer('Основные блюда', 'assets/images/salat2.jpg', 200),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildContainer("Супы", 'assets/images/salat2.jpg', 200),
              buildContainer(
                  'Выпечка\n и десерты', 'assets/images/salat.jpg', 150),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildContainer("Гарниры", 'assets/images/salat3.jpg', 170),
              buildContainer("Закуски", 'assets/images/salat3.jpg', 170),
            ],
          ),
        ],
      ),
    );
  }
}
