import 'package:flutter/material.dart';
import 'package:portfolio/globals/myString.dart';
import 'package:portfolio/pages/aboutMe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyStrings.appName,
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: AboutMe(),
    );
  }
}

