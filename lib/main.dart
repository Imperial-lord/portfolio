// @dart=2.9
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
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
      theme: ThemeData.light().copyWith(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      /// Note the order - About, Resume, Projects, Contact.
      /// We'll use this order to pass numbers to Nav and color appropriately

      /// Routes have been replaced by onGenerateRoute so that we can use fade animations
      // routes: {
      //   '/': (context) => AboutMe(),
      //   AboutMe.route: (context) => AboutMe(),
      //   Resume.route: (context) => Resume(),
      //   Projects.route: (context) => Projects(),
      //   ContactMe.route: (context) => ContactMe(),
      // },

      /// This is important for Named Page Transition Animations!
      onGenerateRoute: (settings) {
        switch (settings.name) {
        // We will make sure that for "/" we still go to AboutMe()
          case "/":
          case AboutMe.route:
            return PageTransition(
              child: AboutMe(),
              type: PageTransitionType.fade,
              settings: settings,
              duration: Duration(milliseconds: 400),
            );
            break;
          case Resume.route:
            return PageTransition(
              child: Resume(),
              type: PageTransitionType.fade,
              settings: settings,
              duration: Duration(milliseconds: 400),
            );
            break;
          case Projects.route:
            return PageTransition(
              child: Projects(),
              type: PageTransitionType.fade,
              settings: settings,
              duration: Duration(milliseconds: 400),
            );
            break;
          case ContactMe.route:
            return PageTransition(
              child: ContactMe(),
              type: PageTransitionType.fade,
              settings: settings,
              duration: Duration(milliseconds: 400),
            );
            break;
          default:
            return null;
        }
      },
    );
  }
}
