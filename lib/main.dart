import 'package:flutter/material.dart';
import 'package:flutter_vedio_player/home_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter fit",
      home: HomePage(),
    );
  }
}
