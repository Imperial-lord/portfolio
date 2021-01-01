import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/globals/myString.dart';

class NavBarTablet extends StatefulWidget {
  _NavBarTabletState createState() => _NavBarTabletState();
}

class _NavBarTabletState extends State<NavBarTablet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MyDimens.double_125,
      color: MyColors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: MyDimens.double_50),
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
                          fontSize: MyDimens.double_25),
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
                      fontSize: MyDimens.double_17),
                ),
              ],
            ),
            Spacer(),
            Icon(EvaIcons.menu, color: MyColors.accentColor, size: MyDimens.double_50,),
          ],
        ),
      ),
    );
  }
}
