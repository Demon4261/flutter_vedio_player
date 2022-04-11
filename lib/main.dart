import 'package:flutter/material.dart';
import 'package:flutter_vedio_player/screens/welcome_page.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter fit",
      home: WelcomePage(),
    );
  }
}
