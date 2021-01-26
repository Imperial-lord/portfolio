import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/globals/myString.dart';
import 'package:portfolio/widgets/mobile/drawerMobile.dart';
import 'package:portfolio/widgets/portfolio_icons.dart';
import 'package:page_transition/page_transition.dart';

class NavBarMobile extends StatefulWidget {
  final int currentScreen;

  NavBarMobile({required this.currentScreen});

  _NavBarMobileState createState() => _NavBarMobileState(currentScreen);
}

class _NavBarMobileState extends State<NavBarMobile> {
  int currentScreen;

  _NavBarMobileState(this.currentScreen);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MyDimens.double_125,
      color: MyColors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: MyDimens.double_20),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
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
                          fontSize: MyDimens.double_20),
                    ),
                  ],
                ),
                MySpaces.vSmallestGapInBetween,
                Text(
                  MyStrings.myWork.toUpperCase(),
                  style: TextStyle(
                      letterSpacing: 0.5,
                      color: MyColors.black,
                      fontFamily: 'avenir-light',
                      fontSize: MyDimens.double_15),
                ),
              ],
            ),
            Spacer(),
            IconButton(
                padding: EdgeInsets.all(0),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 600),
                          child: DrawerMobile(currentScreen: currentScreen)));
                },
                icon: Icon(
                  PortfolioIcons.bars,
                  color: MyColors.accentColor,
                  size: MyDimens.double_30,
                )),
          ],
        ),
      ),
    );
  }
}
