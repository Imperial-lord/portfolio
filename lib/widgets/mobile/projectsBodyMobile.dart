import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/functions/responsiveHelper.dart';
import 'package:portfolio/functions/yearFinder.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/globals/myString.dart';
import 'package:portfolio/widgets/mobile/projectsCardMobile.dart';
import 'package:portfolio/widgets/portfolio_icons.dart';
import 'package:portfolio/extensions/hoverExtensions.dart';

class ProjectsBodyMobile extends StatefulWidget {
  _ProjectsBodyMobileState createState() => _ProjectsBodyMobileState();
}

class _ProjectsBodyMobileState extends State<ProjectsBodyMobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MyDimens.double_20 + MyDimens.double_1,
              height: MyDimens.double_20 + MyDimens.double_1,
              color: MyColors.accentColor,
            ),
            MySpaces.hSmallestGapInBetween,
            Text(
              'Projects',
              style: TextStyle(
                  color: MyColors.black,
                  fontFamily: 'poppins-bold',
                  fontSize: MyDimens.double_35),
            ),
          ],
        ),
        MySpaces.vSmallGapInBetween,
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Column(
            children: [
              ProjectsCardMobile(),
              MySpaces.vSmallGapInBetween,
              ProjectsCardMobile(),
              MySpaces.vSmallGapInBetween,
              ProjectsCardMobile(),
              MySpaces.vSmallGapInBetween,
            ],
          ),
        ),
      ],
    );
  }
}
