import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/functions/yearFinder.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/globals/myString.dart';
import 'package:portfolio/widgets/portfolio_icons.dart';
import 'package:portfolio/extensions/hoverExtensions.dart';


class AboutCardMobileTab extends StatefulWidget {
  _AboutCardMobileTabState createState() => _AboutCardMobileTabState();
}

class _AboutCardMobileTabState extends State<AboutCardMobileTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(138, 131, 124, 0.23),
            blurRadius: 25.0, // soften the shadow
            spreadRadius: 5.0, //extend the shadow
            offset: Offset(
              -15,
              17,
            ),
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            width: 0.9 * MediaQuery.of(context).size.width,
            color: MyColors.primaryColor,
            padding: EdgeInsets.symmetric(vertical: MyDimens.double_25),
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
                      height: 0.8),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: () {},
                      color: MyColors.accentColor,
                      hoverColor: MyColors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(MyDimens.double_20),
                        side: BorderSide(
                          color: MyColors.accentColor,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MyDimens.double_15, vertical: MyDimens.double_10),
                        child: Text(
                          'RESUME',
                          style: TextStyle(
                            fontFamily: 'avenir-regular',
                            fontSize: 15,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ).aboutButton1,
                    ),
                    MySpaces.hGapInBetween,
                    FlatButton(
                      onPressed: () {},
                      color: MyColors.white,
                      hoverColor: MyColors.accentColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(MyDimens.double_20),
                        side: BorderSide(
                          color: MyColors.accentColor,
                        ),
                      ),
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: MyDimens.double_15, vertical: MyDimens.double_10),
                          child: Text(
                            'PROJECTS',
                            style: TextStyle(
                              fontFamily: 'avenir-regular',
                              fontSize: 15,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                      ).aboutButton2,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: MyColors.white,
            height: 53,
            width: 0.9 * MediaQuery.of(context).size.width,
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
          ),
          Container(
            color: MyColors.primaryColor,
            height: MyDimens.double_10,
            width: 0.9 * MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}
