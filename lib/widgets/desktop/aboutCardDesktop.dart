import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/functions/yearFinder.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/globals/myString.dart';
import 'package:portfolio/widgets/portfolio_icons.dart';

class AboutCardDesktop extends StatefulWidget {
  _AboutCardDesktopState createState() => _AboutCardDesktopState();
}

class _AboutCardDesktopState extends State<AboutCardDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(138,131,124,0.23),
            blurRadius: 25.0, // soften the shadow
            spreadRadius: 5.0, //extend the shadow
            offset: Offset(
              -15,17,
            ),
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 472,
            width: MyDimens.double_375,
            color: MyColors.primaryColor,
            padding: EdgeInsets.symmetric(vertical: MyDimens.double_40),
            child: Column(
              children: [
                ClipOval(
                    child: Image(
                  image: NetworkImage('https://i.ibb.co/9GfRf96/shin.jpg'),
                  height: 205,
                  width: 205,
                )),
                MySpaces.vMediumGapInBetween,
                Text(
                  'AB',
                  style: TextStyle(
                    color: MyColors.black,
                    fontFamily: 'poppins',
                    fontSize: 27,
                    height: 0.8
                  ),
                ),
                Text(
                  'Satyaprakash',
                  style: TextStyle(
                    color: MyColors.black,
                    fontFamily: 'poppins',
                    fontSize: 27,
                  ),
                ),
                MySpaces.vMediumGapInBetween,
                Container(
                  color: MyColors.accentColor,
                  height: 2,
                  width: 50,
                ),
                MySpaces.vMediumGapInBetween,
                Text(
                  MyStrings.myWork.toUpperCase(),
                  style: TextStyle(
                    color: MyColors.black,
                    fontFamily: 'avenir-light',
                    fontSize: 17,
                    letterSpacing: 4,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: MyColors.white,
            height: 53,
            width: MyDimens.double_375,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  PortfolioIcons.facebook_f,
                  size: MyDimens.double_25,
                ),
                MySpaces.hMediumGapInBetween,
                Icon(
                  PortfolioIcons.twitter,
                  size: MyDimens.double_25,
                ),
                MySpaces.hMediumGapInBetween,
                Icon(
                  PortfolioIcons.linkedin_in,
                  size: MyDimens.double_25,
                ),
                MySpaces.hMediumGapInBetween,
                Icon(
                  PortfolioIcons.github,
                  size: MyDimens.double_25,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
