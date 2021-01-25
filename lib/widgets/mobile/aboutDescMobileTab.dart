import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/functions/yearFinder.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/globals/myString.dart';
import 'package:portfolio/widgets/portfolio_icons.dart';
import 'package:portfolio/extensions/hoverExtensions.dart';

class AboutDescMobileTab extends StatefulWidget {
  _AboutDescMobileTabState createState() => _AboutDescMobileTabState();
}

class _AboutDescMobileTabState extends State<AboutDescMobileTab> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: MyColors.primaryDark,
      child: Container(
        color: MyColors.primaryDark,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: MyDimens.double_18, horizontal: 0.05 * MediaQuery.of(context).size.width),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello',
              style: TextStyle(
                color: MyColors.black,
                fontFamily: 'poppins',
                fontSize: 100,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              "Here's who I am & what I do",
              style: TextStyle(
                color: MyColors.black,
                fontFamily: 'avenir-light',
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            MySpaces.vGapInBetween,
            Text(
              "I'm a paragraph. Click here to add your own text and edit me. It’s easy. Just click “Edit Text” or double click me to add your own content and make changes to the font.",
              style: TextStyle(
                color: MyColors.black,
                fontFamily: 'avenir-light',
                fontSize: 17,
                height: 1.5,
              ),
            ),
            MySpaces.vGapInBetween,
            Text(
              "I’m a great place for you to tell a story and let your users know a little more about you.",
              style: TextStyle(
                color: MyColors.black,
                fontFamily: 'avenir-light',
                fontSize: 17,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
