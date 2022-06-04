import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:qwe1/screens/profile_screen.dart';
import 'package:qwe1/screens/ricep_screen.dart';
import 'package:qwe1/screens/shop_screen.dart';

import 'home_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> pages = [
    {"page": HomeScreen(), "title": "03 июня, пятница"},
    {"page": ShopScreen(), "title": "Список продуктов"},
    {"page": RicepScreen(), "title": "Рецепты"},
    {"page": ProfileScreen(), "title": "Профиль"},
  ];
  void selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          pages[_selectedIndex]["title"],
          style: TextStyle(
              color: Color(0xFF2d2d2d),
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ),
      ),
      body: pages[_selectedIndex]["page"],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Theme.of(context).accentColor,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.grey,
              tabs: [
                GButton(
                  icon: FontAwesomeIcons.home,
                  text: 'Главная',
                ),
                GButton(
                  icon: FontAwesomeIcons.bagShopping,
                  text: 'Покупки',
                ),
                GButton(
                  icon: FontAwesomeIcons.piedPiperHat,
                  text: 'Рецепты',
                ),
                GButton(
                  icon: FontAwesomeIcons.userLarge,
                  text: 'Профиль',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: selectPage,
            ),
          ),
        ),
      ),
    );
  }
}
