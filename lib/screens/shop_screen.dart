import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grouped_list/grouped_list.dart';

import '../../data/data.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(25),
          color: Colors.white,
          child: Text('На неделю, 26 мая - 1 инюн.',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
        ),
        Expanded(
          child: GroupedListView<dynamic, String>(
            elements: elements,
            groupBy: (element) => element['group'],
            groupComparator: (value1, value2) => value2.compareTo(value1),
            itemComparator: (item1, item2) =>
                item1['name'].compareTo(item2['name']),
            order: GroupedListOrder.DESC,
            useStickyGroupSeparators: true,
            groupSeparatorBuilder: (String value) => Container(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  value,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            itemBuilder: (context, index) {
              return ListTile(
                tileColor: Colors.white,
                leading: Icon(
                  FontAwesomeIcons.circlePlus,
                  size: 25,
                  color: Theme.of(context).accentColor,
                ),
                title: Text(
                  index['name'],
                  style: TextStyle(fontSize: 15),
                ),
                trailing: Text(index['qwe']),
              );
            },
          ),
        ),
      ],
    );
  }
}
