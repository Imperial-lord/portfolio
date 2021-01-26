import 'dart:async';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:portfolio/functions/responsiveHelper.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/pages/aboutMe.dart';
import 'package:portfolio/pages/contactMe.dart';
import 'package:portfolio/pages/projects.dart';
import 'package:portfolio/pages/resume.dart';
import 'package:portfolio/widgets/portfolio_icons.dart';

class DrawerMobile extends StatefulWidget {
  final int currentScreen;

  DrawerMobile({required this.currentScreen});

  _DrawerMobileState createState() => _DrawerMobileState(currentScreen);
}

class _DrawerMobileState extends State<DrawerMobile> {
  static const List<String> arr = ["ABOUT ME", "RESUME", "PROJECTS", "CONTACT"];
  int currentScreen;

  _DrawerMobileState(this.currentScreen);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: MyColors.primaryColor,
          padding: (responsiveHelper(context)) == "Tablet"
              ? EdgeInsets.symmetric(horizontal: MyDimens.double_200)
              : EdgeInsets.symmetric(horizontal: MyDimens.double_60),
          child: Column(
            children: [
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      PortfolioIcons.cancel,
                      color: MyColors.black,
                      size: 40,
                    ),
                  ),
                ],
              ),
              MySpaces.vLargestGapInBetween,
              FlatButton(
                color: Colors.transparent,
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  Navigator.pushNamed(context, AboutMe.route);
                },
                child: Text(
                  arr[0],
                  style: TextStyle(
                      fontFamily: 'poppins-bold',
                      fontSize: 25,
                      color: (currentScreen == 0)
                          ? MyColors.accentColor
                          : MyColors.black),
                ),
              ),
              MySpaces.vLargeGapInBetween,
              FlatButton(
                color: Colors.transparent,
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  Navigator.pushNamed(context, Resume.route);
                },
                child: Text(
                  arr[1],
                  style: TextStyle(
                      fontFamily: 'poppins-bold',
                      fontSize: 25,
                      color: (currentScreen == 1)
                          ? MyColors.accentColor
                          : MyColors.black),
                ),
              ),
              MySpaces.vLargeGapInBetween,
              FlatButton(
                color: Colors.transparent,
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  Navigator.pushNamed(context, Projects.route);
                },
                child: Text(
                  arr[2],
                  style: TextStyle(
                      fontFamily: 'poppins-bold',
                      fontSize: 25,
                      color: (currentScreen == 2)
                          ? MyColors.accentColor
                          : MyColors.black),
                ),
              ),
              MySpaces.vLargeGapInBetween,
              FlatButton(
                color: Colors.transparent,
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  Navigator.pushNamed(context, ContactMe.route);
                },
                child: Text(
                  arr[3],
                  style: TextStyle(
                      fontFamily: 'poppins-bold',
                      fontSize: 25,
                      color: (currentScreen == 3)
                          ? MyColors.accentColor
                          : MyColors.black),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
