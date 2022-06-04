import 'package:flutter/material.dart';
import 'package:qwe1/widgets/home/diary_item.dart';
import 'package:qwe1/widgets/home/home_info_item.dart';
import 'package:qwe1/widgets/home/home_item.dart';
import 'package:qwe1/widgets/home/index_item.dart';
import 'package:qwe1/widgets/home/plan_today_item.dart';
import 'package:qwe1/widgets/home/plan_week_item.dart';
import 'package:video_player/video_player.dart';

import '../widgets/home/video_player.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: 30),
            DiaryItem("Дневник питания", 140),
            SizedBox(height: 35),
            IndexItem(),
            SizedBox(height: 35),
            VideoItem(),
            Divider(color: Colors.black, height: 80),
            PlanTodayItem(),
            SizedBox(height: 25),
            HomeItem(
              'Завтрак',
              'до 10:00',
              'Омлет картофельный, Йогурт 3,5% жирности с орехами несладкий, Фруктовые мюсли с медом и т.д',
            ),
            SizedBox(height: 50),
            HomeItem(
              'Перекус 1',
              'до 10:00',
              'Коровье молоко, Финик, Природная минеральная вода и т.д.',
            ),
            SizedBox(height: 50),
            HomeItem('Обед', 'до 14:00',
                'Холодный испанский овощной суп "Гаспачо", Целая щука глубокой обжарки(приготовленная без жира) и т.д'),
            SizedBox(height: 50),
            HomeItem('Перекус 2', 'до 12:00',
                'Ийогурт 3,5% жирности с ванильным несладким пробиетиком, Банан, Питьевая вода и т.д'),
            SizedBox(height: 50),
            HomeItem('Ужин', 'до 19:00',
                'Лосось в панировке жареный, нут спелый отварной, Салат из сладкого перца с помидором и т.д'),
            SizedBox(height: 40),
            Divider(color: Colors.black, height: 30),
            PlanWeekItem(),
            Divider(color: Colors.black, height: 30),
            SizedBox(height: 30),
            HomeInfoItem(
              "Все о правильном питании",
              'Книги от профессора Шармана, а также новости науки о питании',
              Color(0xFF519645),
              270,
            ),
            SizedBox(height: 30),
            HomeInfoItem(
              "Польза, безопасность и взаимодействия витаминов, минералов и БАДов",
              '',
              Color(0xFFf39a4a),
              290,
            ),
            SizedBox(height: 30),
            HomeInfoItem(
              "Вступить в ОО 	«Национальный центр здороовго питания»",
              '',
              Color(0xFF80a66b),
              260,
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
