import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qwe1/widgets/home/diary_item.dart';
import 'package:qwe1/widgets/home/index_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 280,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 135,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70),
                      child: Image.asset('assets/images/avatar.jpg'),
                    ),
                  ),
                  Text('не таир',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Color(0xFF72bf34)),
                    ),
                    onPressed: () {},
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: Text('Редактировать профиль')),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              alignment: Alignment.centerLeft,
              child: Text(
                'Ваши данные',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 470,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: ListView(
                itemExtent: 67.0,
                physics: NeverScrollableScrollPhysics(),
                children: ListTile.divideTiles(
                  context: context,
                  tiles: [
                    ListTile(
                      title: Text(
                        'Пол',
                      ),
                      trailing: Text(
                        'Мужчина',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 17),
                      ),
                    ),
                    ListTile(
                      title: Text('Возраст'),
                      trailing: Text(
                        '33',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 17),
                      ),
                    ),
                    ListTile(
                      title: Text('Рост'),
                      trailing: Text(
                        '178.0 см',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 17),
                      ),
                    ),
                    ListTile(
                      title: Text('Вес'),
                      trailing: Text(
                        '70.0 кг',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 17),
                      ),
                    ),
                    ListTile(
                      title: Text('Цель'),
                      trailing: Text(
                        'Контроль веса',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 17),
                      ),
                    ),
                    ListTile(
                      title: Text('Активность'),
                      trailing: Text(
                        'Экстремально',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 17),
                      ),
                    ),
                    ListTile(
                        title: Text('Меню без'),
                        trailing: Icon(FontAwesomeIcons.arrowRight)),
                  ],
                ).toList(),
              ),
            ),
            SizedBox(height: 40),
            DiaryItem("Прогресс", 155),
            SizedBox(height: 40),
            IndexItem(),
            Container(
              height: 80,
              alignment: Alignment.centerLeft,
              child: Text(
                'Настройки',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              height: 160,
              child: ListView(
                itemExtent: 80.0,
                physics: NeverScrollableScrollPhysics(),
                children: ListTile.divideTiles(
                  context: context,
                  tiles: [
                    ListTile(
                        title: Text(
                          'Пользовательское\nсоглашение и политика\nконфидециальности',
                        ),
                        trailing: Icon(FontAwesomeIcons.angleRight,
                            color: Color(0xFF2d2d2d))),
                    ListTile(
                        title: Text('Сменить язык'),
                        trailing: Icon(FontAwesomeIcons.angleRight,
                            color: Color(0xFF2d2d2d))),
                  ],
                ).toList(),
              ),
            ),
            Container(
              height: 130,
              child: ListView(
                itemExtent: 65.0,
                physics: NeverScrollableScrollPhysics(),
                children: ListTile.divideTiles(
                  context: context,
                  tiles: [
                    ListTile(
                        title: Text('Избранное',
                            style: TextStyle(fontWeight: FontWeight.w500)),
                        trailing: Icon(FontAwesomeIcons.angleRight,
                            color: Color(0xFF2d2d2d))),
                    ListTile(
                        title: Text('Выйти',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w500)),
                        trailing: Icon(
                          FontAwesomeIcons.doorClosed,
                          color: Colors.red,
                        )),
                  ],
                ).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
