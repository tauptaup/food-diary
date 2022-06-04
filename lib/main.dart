import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qwe1/screens/nutri_steppe_screen.dart';
import 'package:qwe1/widgets/home/diar_screen.dart';
import 'screens/tab_screen.dart';
import 'widgets/home/home_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final newTextTheme = Theme.of(context).textTheme.apply(
          bodyColor: Color(0xFF2d2d2d),
          displayColor: Color(0xFF2d2d2d),
          fontFamily: 'Poppins',
        );

    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            textTheme: newTextTheme,
            primarySwatch: MaterialColor(0xFF5E81AC, {
              50: Color(0xFF5E81AC),
              100: Color(0xFF5E81AC),
              200: Color(0xFF5E81AC),
              300: Color(0xFF5E81AC),
              400: Color(0xFF5E81AC),
              500: Color(0xFF5E81AC),
              600: Color(0xFF5E81AC),
              700: Color(0xFF5E81AC),
            }),
            fontFamily: 'Poppins',
            accentColor: Color(0xFF72bf34),
            canvasColor: Color.fromARGB(255, 245, 245, 245)),
        home: TabScreen(),
        routes: {
          HomeTab.routeName: (context) => HomeTab(),
          DiarScreen.routeName: (context) => DiarScreen(),
          NutriSteppeScreen.routeName: (context) => NutriSteppeScreen(),
        });
  }
}
