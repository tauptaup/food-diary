import 'package:flutter/material.dart';

class VideoItem extends StatelessWidget {
  const VideoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 205,
      color: Colors.indigo,
      child: Image.asset('assets/images/video.jpg', fit: BoxFit.cover),
    );
  }
}
