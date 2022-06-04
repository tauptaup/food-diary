import 'package:flutter/material.dart';

class NutriSteppeScreen extends StatelessWidget {
  const NutriSteppeScreen({Key? key}) : super(key: key);

  static const routeName = '/qwe';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(
          'NutriSteppe',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Container(
          height: 290,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'nutri\nsteppe',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF4a953f),
                ),
              ),
              Text(
                'Меню\n здоровых блюд',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                  'С нами правильно и разнообразно питаться - легко, Узнайте о содержании витаминов и минералов в каждом блюде',
                  style: TextStyle(fontSize: 20, color: Colors.grey))
            ],
          ),
        ),
      ),
    );
  }
}
