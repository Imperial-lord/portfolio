import 'package:flutter/material.dart';
import 'package:portfolio/functions/yearFinder.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/globals/myString.dart';

import '../portfolio_icons.dart';

class FooterMobile extends StatefulWidget {
  _FooterMobileState createState() => _FooterMobileState();
}

class _FooterMobileState extends State<FooterMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MyDimens.double_200 + MyDimens.double_50,
      color: MyColors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: MyDimens.double_20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
              ],
            ),
            MySpaces.vSmallGapInBetween,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      PortfolioIcons.facebook_f,
                      size: MyDimens.double_20,
                    ),
                    MySpaces.hGapInBetween,
                    Icon(
                      PortfolioIcons.twitter,
                      size: MyDimens.double_20,
                    ),
                    MySpaces.hGapInBetween,
                    Icon(
                      PortfolioIcons.linkedin_in,
                      size: MyDimens.double_20,
                    ),
                    MySpaces.hGapInBetween,
                    Icon(
                      PortfolioIcons.github,
                      size: MyDimens.double_20,
                    ),
                  ],
                ),
              ],
            ),
            MySpaces.vSmallGapInBetween,
            Text(
              '© ${yearFinder()} by AB Satyaprakash.\nCreated with Flutter-Web and Material Design.',
              style: TextStyle(
                  color: MyColors.black,
                  fontFamily: 'avenir-light',
                  fontSize: MyDimens.double_14),
            ),
          ],
        ),
      ),
    );
  }
}
