import 'package:flutter/material.dart';
import 'package:qwe1/widgets/ricep/ricep_block.dart';
import 'package:qwe1/widgets/ricep/ricep_carousel.dart';
import 'package:qwe1/widgets/ricep/ricep_item.dart';
import 'package:qwe1/widgets/ricep/search_item.dart';

class RicepScreen extends StatelessWidget {
  const RicepScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SearchItem(),
            Divider(color: Colors.black, height: 40),
            RicepBlock(),
            Divider(color: Colors.black, height: 50),
            Container(
              alignment: Alignment.centerLeft,
              child: Text('Рецепт дня',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 20),
            RicepCarousel('Питьевая вода', '80 ккал', 'assets/images/asd2.jpg',
                'Крем-суп из спаржи', '42 ккал', 'assets/images/asd.jpg'),
            Divider(color: Colors.black, height: 60),
            RicepItem(
                "Завтрак",
                "Хрустящии хлебец из пшенич",
                "356 ккал",
                "Хрустящии хлебец из ржаной",
                "321 ккад",
                "Хрустящии хлебец из ржаной",
                "342 ккал"),
            RicepItem("Обед", "Свекольный борщ", "103 ккал", "Абрикос",
                "39 ккал", "Абрикосовый / апельсиновый", "40 ккал"),
            RicepItem(
                "Перекус 2",
                "Хрустящии хлебец из пшенич",
                "356 ккал",
                "Хрустящии хлебец из ржаной",
                "321 ккал",
                "Хрустящии хебец из ржаной",
                "342 ккал"),
            RicepItem("Ужин", "Свекольный борщ", "Абрикос", "Абрикос",
                "39 ккал", "Абрикосовый / апельсиновый", "40 ккал"),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
