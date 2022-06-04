import 'package:flutter/material.dart';
import 'package:qwe1/widgets/home/tab_home.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  static const routeName = '/home-tab';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.white,
              title: Text('План питания на сегодня'),
              centerTitle: true,
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
              pinned: true,
              floating: true,
              bottom: TabBar(
                labelStyle:
                    TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                labelColor: Colors.black,
                unselectedLabelStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                tabs: [
                  Tab(child: Text('Завтрак')),
                  Tab(child: Text('Перекус 1')),
                  Tab(child: Text('Обед')),
                  Tab(child: Text('Перекус 2')),
                  Tab(child: Text('Ужин')),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: <Widget>[
            TabHome(),
            TabHome(),
            TabHome(),
            TabHome(),
            TabHome(),
          ],
        ),
      )),
    );
  }
}
