import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DiarScreen extends StatelessWidget {
  const DiarScreen({Key? key}) : super(key: key);

  static const routeName = '/diar-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Дневник питания'),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      flex: 3,
                      child: Container(
                        height: 170,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(70),
                          child: Image.asset('assets/images/avatar.jpg'),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Дневник',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500)),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                                textAlign: TextAlign.center,
                                'Здесь удобно сохранять каждый прием пищи и сдедить за статистикой',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black54)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 70,
                child: Text(
                  '04 июня, суббота',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                height: 260,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      flex: 15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Завтрак',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'до 10:00',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Калории",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                              Text(
                                '0/669 ккал',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          LinearPercentIndicator(
                            animation: true,
                            lineHeight: 10.0,
                            animationDuration: 2500,
                            percent: 0.8,
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: Colors.lime,
                          ),
                          Text(
                            'Рекомендовано 815 ккал',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 25,
                      child: InkWell(
                        splashColor: Theme.of(context).primaryColor,
                        onTap: () {},
                        child: Container(
                          height: 90,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFedf4ec),
                          ),
                          child: Text(
                            'Добавить',
                            style:
                                TextStyle(color: Theme.of(context).accentColor),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
