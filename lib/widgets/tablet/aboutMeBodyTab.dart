import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/functions/yearFinder.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/globals/myString.dart';
import 'package:portfolio/widgets/mobile/aboutCardMobileTab.dart';
import 'package:portfolio/widgets/mobile/aboutDescMobileTab.dart';
import 'package:portfolio/widgets/portfolio_icons.dart';
import 'package:portfolio/extensions/hoverExtensions.dart';


class AboutMeBodyTab extends StatefulWidget {
  _AboutMeBodyTabState createState() => _AboutMeBodyTabState();
}

class _AboutMeBodyTabState extends State<AboutMeBodyTab> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              color: MyColors.white,
              width: MediaQuery.of(context).size.width,
              height: 0.2* MediaQuery.of(context).size.height,
            ),
            Container(
              color: MyColors.primaryDark,
              width: MediaQuery.of(context).size.width,
              height: 0.5* MediaQuery.of(context).size.height,
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Spacer(),
              Column(
                children: [
                  AboutCardMobileTab(),
                  MySpaces.vLargeGapInBetween,
                  AboutDescMobileTab(),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
