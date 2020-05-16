import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  final Color icon = Color(0xFFEF412D);
  final Color color1 = Color(0xFFCF3529);
  final Color color2 = Color(0xFFE1372F);
  final Color color3 = Color(0xFFEF6C1C);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Video'),),
    );
  }
}
