import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/globals/myString.dart';
import 'package:portfolio/pages/aboutMe.dart';
import 'package:portfolio/pages/contactMe.dart';
import 'package:portfolio/pages/projects.dart';
import 'package:portfolio/pages/resume.dart';
import 'package:portfolio/extensions/hoverExtensions.dart';

class NavBarDesktop extends StatefulWidget {
  final int currentScreen;

  NavBarDesktop({required this.currentScreen});

  _NavBarDesktopState createState() => _NavBarDesktopState(currentScreen);
}

class _NavBarDesktopState extends State<NavBarDesktop> {
  int currentScreen;

  _NavBarDesktopState(this.currentScreen);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MyDimens.double_125,
      color: MyColors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: MyDimens.double_50),
        child: Row(
          children: [
            Container(
              width: MyDimens.double_16,
              height: MyDimens.double_16,
              color: MyColors.accentColor,
            ),
            MySpaces.hSmallestGapInBetween,
            Text(
              MyStrings.myName,
              style: TextStyle(
                  color: MyColors.black,
                  fontFamily: 'poppins',
                  fontSize: MyDimens.double_25),
            ),
            MySpaces.hSmallestGapInBetween,
            Padding(
              padding: const EdgeInsets.only(top: MyDimens.double_7),
              child: Row(
                children: [
                  Text(
                    '/',
                    style: TextStyle(
                        color: MyColors.black,
                        letterSpacing: 0.5,
                        fontFamily: 'avenir-light',
                        fontSize: MyDimens.double_18),
                  ),
                  MySpaces.hSmallestGapInBetween,
                  Text(
                    MyStrings.myWork.toUpperCase(),
                    style: TextStyle(
                        letterSpacing: 0.5,
                        color: MyColors.black,
                        fontFamily: 'avenir-light',
                        fontSize: MyDimens.double_18),
                  ),
                ],
              ),
            ),
            Spacer(),
            for (int i = 0; i < MyStrings.navList.length; i++)
              Padding(
                padding: const EdgeInsets.only(
                    left: MyDimens.double_15,
                    right: MyDimens.double_15,
                    top: MyDimens.double_10),
                child: FlatButton(
                  onPressed: () {
                    if (i == 0)
                      Navigator.pushNamed(context, AboutMe.route);
                    else if (i == 1)
                      Navigator.pushNamed(context, Resume.route);
                    else if (i == 2)
                      Navigator.pushNamed(context, Projects.route);
                    else
                      Navigator.pushNamed(context, ContactMe.route);
                  },
                  color: MyColors.white,
                  hoverColor: MyColors.white,
                  splashColor: MyColors.white,
                  focusColor: MyColors.white,
                  highlightColor: MyColors.white,
                  child: (i == currentScreen)
                      ? Text(
                          MyStrings.navList[i].toUpperCase(),
                          style: TextStyle(
                              letterSpacing: 0.5,
                              fontFamily: 'avenir-light',
                              color: MyColors.accentColor,
                              fontSize: MyDimens.double_15),
                        ).highlightOnHover
                      : Text(
                          MyStrings.navList[i].toUpperCase(),
                          style: TextStyle(
                              letterSpacing: 0.5,
                              fontFamily: 'avenir-light',
                              fontSize: MyDimens.double_15),
                        ).highlightOnHover,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
