import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/globals/myString.dart';

class NavBarMobile extends StatefulWidget {
  _NavBarMobileState createState() => _NavBarMobileState();
}

class _NavBarMobileState extends State<NavBarMobile> {
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
                      fontFamily: 'avenir',
                      fontSize: MyDimens.double_15),
                ),
              ],
            ),
            Spacer(),
            Icon(EvaIcons.menu, color: MyColors.accentColor, size: MyDimens.double_40,),
          ],
        ),
      ),
    );
  }
}
