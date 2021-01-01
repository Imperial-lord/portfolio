import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/functions/yearFinder.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/globals/myString.dart';

class FooterDesktop extends StatefulWidget {
  _FooterDesktopState createState() => _FooterDesktopState();
}

class _FooterDesktopState extends State<FooterDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MyDimens.double_125,
      color: MyColors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: MyDimens.double_50),
        child: Row(
          children: [
            Text(
              '© ${yearFinder()} by AB Satyaprakash.\nCreated with Flutter-Web and Material Design.',
              style: TextStyle(
                  color: MyColors.black,
                  fontFamily: 'avenir-light',
                  fontSize: MyDimens.double_14),
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Call',
                  style: TextStyle(
                      color: MyColors.black,
                      fontFamily: 'avenir-regular',
                      fontSize: MyDimens.double_14,
                      fontWeight: FontWeight.bold),
                ),
                MySpaces.vSmallestGapInBetween,
                Text(
                  '6370-548-663',
                  style: TextStyle(
                    color: MyColors.black,
                    fontFamily: 'avenir-light',
                    fontSize: MyDimens.double_14,
                  ),
                ),
              ],
            ),
            MySpaces.hLargeGapInBetween,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Write',
                  style: TextStyle(
                      color: MyColors.black,
                      fontFamily: 'avenir-regular',
                      fontSize: MyDimens.double_14,
                      fontWeight: FontWeight.bold),
                ),
                MySpaces.vSmallestGapInBetween,
                Text(
                  'absatyaprakash01@gmail.com',
                  style: TextStyle(
                      color: MyColors.black,
                      fontFamily: 'avenir-light',
                      fontSize: MyDimens.double_14),
                ),
              ],
            ),
            MySpaces.hLargeGapInBetween,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Follow',
                  style: TextStyle(
                      color: MyColors.black,
                      fontFamily: 'avenir-regular',
                      fontSize: MyDimens.double_14,
                      fontWeight: FontWeight.bold),
                ),
                MySpaces.vSmallestGapInBetween,
                Row(
                  children: [
                    Icon(
                      EvaIcons.facebook,
                      size: MyDimens.double_20,
                    ),
                    MySpaces.hGapInBetween,
                    Icon(
                      EvaIcons.twitter,
                      size: MyDimens.double_20,
                    ),
                    MySpaces.hGapInBetween,
                    Icon(
                      EvaIcons.linkedin,
                      size: MyDimens.double_20,
                    ),
                    MySpaces.hGapInBetween,
                    Icon(
                      EvaIcons.github,
                      size: MyDimens.double_20,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
