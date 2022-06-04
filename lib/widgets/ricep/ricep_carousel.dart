import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qwe1/models/meal.dart';

class RicepCarousel extends StatelessWidget {
  RicepCarousel(this.title1, this.title2, this.image1, this.title11,
      this.title22, this.image2);

  Widget buildCirc() {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.green,
          radius: 5,
        ),
        SizedBox(width: 6),
        CircleAvatar(
          backgroundColor: Colors.yellow,
          radius: 5,
        ),
        SizedBox(width: 6),
        CircleAvatar(
          backgroundColor: Colors.green,
          radius: 5,
        ),
      ],
    );
  }

  final String title1;
  final String title2;
  final String image1;
  final String title11;
  final String title22;
  final String image2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 310,
            width: 300,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Stack(
                children: [
                  Image.asset(
                    image1,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            title1,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.bowlFood,
                                  color: Theme.of(context).accentColor,
                                  size: 20,
                                )
                              ],
                            ),
                            SizedBox(width: 30),
                            Row(
                              children: [
                                buildCirc(),
                              ],
                            ),
                            SizedBox(width: 30),
                            Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.fire,
                                  color: Theme.of(context).accentColor,
                                  size: 15,
                                ),
                                SizedBox(width: 2),
                                Text(
                                  title2,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 15),
          Container(
            height: 310,
            width: 300,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Stack(
                children: [
                  Image.asset(
                    image2,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            title11,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.bowlFood,
                                  color: Theme.of(context).accentColor,
                                  size: 20,
                                )
                              ],
                            ),
                            SizedBox(width: 30),
                            Row(
                              children: [
                                buildCirc(),
                              ],
                            ),
                            SizedBox(width: 30),
                            Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.fire,
                                  color: Theme.of(context).accentColor,
                                  size: 15,
                                ),
                                SizedBox(width: 2),
                                Text(
                                  title22,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// return Container(
//       height: 310,
//       child: ListView.separated(
//         separatorBuilder: (context, index) => SizedBox(width: 20),
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) => Container(
//           height: 310,
//           width: 300,
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(15),
//             child: Stack(
//               children: [
//                 Image.asset(
//                   image,
//                   fit: BoxFit.cover,
//                 ),
//                 Positioned(
//                   bottom: 20,
//                   left: 20,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(bottom: 5),
//                         child: Text(
//                           title1,
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 18,
//                               fontWeight: FontWeight.w500),
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           Row(
//                             children: [
//                               Icon(
//                                 FontAwesomeIcons.bowlFood,
//                                 color: Colors.white,
//                                 size: 20,
//                               )
//                             ],
//                           ),
//                           SizedBox(width: 30),
//                           Row(
//                             children: [
//                               buildCirc(),
//                             ],
//                           ),
//                           SizedBox(width: 30),
//                           Row(
//                             children: [
//                               Icon(
//                                 FontAwesomeIcons.fire,
//                                 color: Theme.of(context).accentColor,
//                                 size: 15,
//                               ),
//                               SizedBox(width: 2),
//                               Text(
//                                 title2,
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//         itemCount: 2,
//       ),
//     );
