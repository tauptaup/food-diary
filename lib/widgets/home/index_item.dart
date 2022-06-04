import 'package:flutter/material.dart';

class IndexItem extends StatelessWidget {
  const IndexItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 185,
      width: double.infinity,
      decoration: BoxDecoration(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Image.asset('assets/images/index2.jpg', fit: BoxFit.cover),
            Positioned(
              bottom: 20,
              left: 20,
              child: Text(
                'Индекс\n пищевого здоровья',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
