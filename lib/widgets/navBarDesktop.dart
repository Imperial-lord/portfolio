import 'package:flutter/material.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/globals/myString.dart';

class NavBarDesktop extends StatefulWidget {
  _NavBarDesktopState createState() => _NavBarDesktopState();
}

class _NavBarDesktopState extends State<NavBarDesktop> {
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
                        fontFamily: 'avenir',
                        fontSize: MyDimens.double_17),
                  ),
                  MySpaces.hSmallestGapInBetween,
                  Text(
                    MyStrings.myWork.toUpperCase(),
                    style: TextStyle(
                        letterSpacing: 0.5,
                        color: MyColors.black,
                        fontFamily: 'avenir',
                        fontSize: MyDimens.double_17),
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
                    top: MyDimens.double_7),
                child: Text(
                  MyStrings.navList[i].toUpperCase(),
                  style: TextStyle(
                      letterSpacing: 0.5,
                      color: MyColors.black,
                      fontFamily: 'avenir',
                      fontSize: MyDimens.double_14),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
