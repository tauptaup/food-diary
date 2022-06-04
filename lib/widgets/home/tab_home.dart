import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:qwe1/widgets/circle_ava.dart';

class TabHome extends StatelessWidget {
  const TabHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 650,
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 6,
              separatorBuilder: (context, index) => Divider(height: 15),
              itemBuilder: (context, index) => Slidable(
                key: const ValueKey(0),
                endActionPane: const ActionPane(
                  motion: ScrollMotion(),
                  children: [
                    SlidableAction(
                      onPressed: doNothing,
                      backgroundColor: Color(0xFF5481C2),
                      foregroundColor: Colors.white,
                      icon: FontAwesomeIcons.rotate,
                      label: 'Заменить',
                    ),
                    SlidableAction(
                      onPressed: doNothing,
                      backgroundColor: Color(0xFFF27E55),
                      foregroundColor: Colors.white,
                      icon: FontAwesomeIcons.bookmark,
                      label: 'Save',
                    ),
                  ],
                ),
                child: Container(
                  child: ListTile(
                    visualDensity: VisualDensity(vertical: 3),
                    leading: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset('assets/images/qwe.jpg',
                            fit: BoxFit.cover),
                      ),
                    ),
                    title: Text("Абрикосовый"),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          FontAwesomeIcons.bowlFood,
                          color: Theme.of(context).accentColor,
                        ),
                        SizedBox(width: 5),
                        CirceAva(5),
                        SizedBox(width: 5),
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.fire,
                              size: 16,
                              color: Theme.of(context).accentColor,
                            ),
                            Text('285 ккал',
                                style: TextStyle(
                                    color: Theme.of(context).accentColor)),
                          ],
                        ),
                      ],
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(FontAwesomeIcons.plus,
                            size: 15, color: Theme.of(context).accentColor),
                        Text('17 г', style: TextStyle(color: Colors.grey))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Container(
          //   child: Row(
          //     children: [
          //       Text(
          //         'Нутруинтный состав',
          //         style: TextStyle(fontSize: 18),
          //       ),
          //       Row(
          //         children: [
          //           Icon(FontAwesomeIcons.fire),
          //           Text(
          //             '669',
          //             style: TextStyle(
          //                 fontSize: 22,
          //                 color: Theme.of(context).accentColor,
          //                 fontWeight: FontWeight.w500),
          //           ),
          //           Text(
          //             'ккал',
          //             style: TextStyle(color: Theme.of(context).accentColor),
          //           ),
          //           LinearPercentIndicator(
          //             width: 100.0,
          //             lineHeight: 8.0,
          //             percent: 0.9,
          //             progressColor: Colors.blue,
          //           )
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}

doNothing(BuildContext conext) {}
// leading: Container(
//                   color: Colors.indigo,
//                   child: ClipRRect(
//                       borderRadius: BorderRadius.circular(20),
//                       child: Image.asset('assets/images/qwe.jpg')),
//                 ),
//                 title: Text('Абрикосовый'),
//                 subtitle: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Icon(
//                       FontAwesomeIcons.bowlFood,
//                       size: 25,
//                     ),
//                     CirceAva(5),
//                     Row(
//                       children: [
//                         Icon(
//                           FontAwesomeIcons.fire,
//                           size: 20,
//                         ),
//                         Text(
//                           '133 ккал',
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 trailing: IconButton(
//                     icon: Icon(FontAwesomeIcons.plus), onPressed: () {}),
