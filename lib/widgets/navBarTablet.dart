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
        padding: const EdgeInsets.symmetric(horizontal: MyDimens.double_30),
        child: Row(
          children: [
            Container(
              width: MyDimens.double_13,
              height: MyDimens.double_13,
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
            MySpaces.hSmallestGapInBetween,
            Padding(
              padding: const EdgeInsets.only(top: MyDimens.double_5),
              child: Row(
                children: [
                  Text(
                    '/',
                    style: TextStyle(
                        color: MyColors.black,
                        letterSpacing: 0.5,
                        fontFamily: 'avenir',
                        fontSize: MyDimens.double_14),
                  ),
                  MySpaces.hSmallestGapInBetween,
                  Text(
                    MyStrings.myWork.toUpperCase(),
                    style: TextStyle(
                        color: MyColors.black,
                        letterSpacing: 0.5,
                        fontFamily: 'avenir',
                        fontSize: MyDimens.double_14),
                  ),
                ],
              ),
            ),
            Spacer(),
            for (int i = 0; i < MyStrings.navList.length; i++)
              Padding(
                padding: const EdgeInsets.only(
                    left: MyDimens.double_10,
                    right: MyDimens.double_10,
                    top: MyDimens.double_5),
                child: Text(
                  MyStrings.navList[i].toUpperCase(),
                  style: TextStyle(
                      color: MyColors.black,
                      letterSpacing: 0.5,
                      fontFamily: 'avenir',
                      fontSize: MyDimens.double_10),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
