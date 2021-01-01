import 'package:flutter/material.dart';
import 'package:portfolio/globals/myString.dart';
import 'package:portfolio/pages/aboutMe.dart';
import 'package:portfolio/pages/contactMe.dart';
import 'package:portfolio/pages/projects.dart';
import 'package:portfolio/pages/resume.dart';

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
      initialRoute: '/',
      routes: {
        /// Note the order - About, Resume, Projects, Contact.
        /// We'll use this order to pass numbers to Nav and color appropriately
        '/':(context) => AboutMe(),
        AboutMe.route:(context) => AboutMe(),
        Resume.route:(context) => Resume(),
        Projects.route:(context) => Projects(),
        ContactMe.route:(context) => ContactMe(),
      },
    );
  }
}

